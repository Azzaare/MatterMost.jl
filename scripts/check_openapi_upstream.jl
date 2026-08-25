using Downloads
using TOML

const CONFIG_PATH = normpath(joinpath(@__DIR__, "..", "openapi", "upstream.toml"))

function github_headers()
    headers = [
        "Accept" => "application/vnd.github+json",
        "User-Agent" => "MatterMost.jl-openapi-monitor",
        "X-GitHub-Api-Version" => "2022-11-28",
    ]
    if haskey(ENV, "GITHUB_TOKEN") && !isempty(ENV["GITHUB_TOKEN"])
        push!(headers, "Authorization" => "Bearer $(ENV["GITHUB_TOKEN"])")
    end
    return headers
end

function fetch_latest_commit(repository::AbstractString, api_path::AbstractString)
    escaped_path = replace(api_path, "/" => "%2F")
    url = "https://api.github.com/repos/$repository/commits?path=$escaped_path&per_page=1"

    body = mktemp() do filename, io
        close(io)
        Downloads.download(url, filename; headers = github_headers())
        read(filename, String)
    end

    matched = match(r"\"sha\"\s*:\s*\"([0-9a-f]{40})\"", body)
    matched === nothing && error("GitHub did not return a commit SHA for $repository/$api_path")
    return matched.captures[1]
end

function main()
    config = TOML.parsefile(CONFIG_PATH)
    repository = config["repository"]
    api_path = config["path"]
    expected = config["last_seen_commit"]
    current = fetch_latest_commit(repository, api_path)

    if current == expected
        println("Mattermost API source is unchanged at $current")
        return
    end

    println(stderr, "Mattermost API source changed.")
    println(stderr, "Recorded: $expected")
    println(stderr, "Current:  $current")
    println(stderr, "Review: https://github.com/$repository/compare/$expected...$current")
    exit(1)
end

main()

