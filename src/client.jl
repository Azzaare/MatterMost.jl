const DEFAULT_API_VERSION = "v4"

"""
    Client(base_url; token=nothing, headers=Dict(), api_version="v4", kwargs...)

Stable Mattermost connection wrapper around the generated OpenAPI transport.
The base URL is the server root, without the API path.
"""
struct Client
    base_url::String
    api_version::String
    transport::OpenAPI.Clients.Client
end

function _normalize_base_url(base_url)
    normalized = rstrip(string(base_url), '/')
    isempty(normalized) && throw(ArgumentError("base_url cannot be empty"))
    return normalized
end

function _normalize_api_version(api_version)
    normalized = strip(string(api_version), '/')
    startswith(normalized, "api/") && (normalized = normalized[5:end])
    startswith(normalized, "v") || (normalized = "v$normalized")
    normalized == "v" && throw(ArgumentError("api_version cannot be empty"))
    return normalized
end

function Client(
    base_url;
    token=nothing,
    headers=Dict{String,String}(),
    api_version=DEFAULT_API_VERSION,
    kwargs...,
)
    normalized_url = _normalize_base_url(base_url)
    normalized_version = _normalize_api_version(api_version)
    normalized_headers = Dict{String,String}(string(k) => string(v) for (k, v) in pairs(headers))
    if !isnothing(token)
        normalized_headers["Authorization"] = "Bearer $(token)"
    end
    get!(normalized_headers, "Content-Type", "application/json")

    endpoint = "$normalized_url/api/$normalized_version"
    transport = OpenAPI.Clients.Client(endpoint; headers=normalized_headers, kwargs...)
    return Client(normalized_url, normalized_version, transport)
end

api_endpoint(client::Client) = "$(client.base_url)/api/$(client.api_version)"
raw_client(client::Client) = client.transport
api_client(client::Client, api_type::Type{<:OpenAPI.APIClientImpl}) = api_type(raw_client(client))

"""
    send_message!(client, channel_id, content; reply_to=nothing, file_ids=nothing,
                  props=nothing, set_online=nothing)

Create a Mattermost post through the stable client facade.
"""
function send_message!(
    client::Client,
    channel_id,
    content;
    reply_to=nothing,
    file_ids=nothing,
    props=nothing,
    set_online=nothing,
)
    request = CreatePostRequest(
        ;
        channel_id=string(channel_id),
        message=string(content),
        root_id=isnothing(reply_to) ? nothing : string(reply_to),
        file_ids=isnothing(file_ids) ? nothing : string.(collect(file_ids)),
        props,
    )
    return create_post(
        api_client(client, PostsApi),
        request;
        set_online=set_online,
    )
end

"""Edit an existing Mattermost post through the stable client facade."""
function edit_message!(client::Client, message_id, content)
    normalized_id = string(message_id)
    request = UpdatePostRequest(; id=normalized_id, message=string(content))
    return update_post(api_client(client, PostsApi), normalized_id, request)
end

"""Delete an existing Mattermost post through the stable client facade."""
function delete_message!(client::Client, message_id)
    return delete_post(api_client(client, PostsApi), string(message_id))
end
