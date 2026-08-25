using MatterMost
using Test

@testset "MatterMost.jl" begin
    @testset "stable client facade" begin
        client = MatterMost.Client(
            "https://mattermost.example.test/";
            token="secret",
            api_version="4",
            headers=Dict("X-Test" => "value"),
        )

        @test client.base_url == "https://mattermost.example.test"
        @test client.api_version == "v4"
        @test MatterMost.api_endpoint(client) ==
              "https://mattermost.example.test/api/v4"
        @test MatterMost.raw_client(client).root ==
              "https://mattermost.example.test/api/v4"
        @test MatterMost.raw_client(client).headers["Authorization"] ==
              "Bearer secret"
        @test MatterMost.raw_client(client).headers["Content-Type"] ==
              "application/json"
        @test MatterMost.raw_client(client).headers["X-Test"] == "value"
        @test MatterMost.api_client(client, MatterMost.PostsApi) isa
              MatterMost.PostsApi
    end

    @test_throws ArgumentError MatterMost.Client("")
    @test_throws ArgumentError MatterMost.Client(
        "https://mattermost.example.test";
        api_version="",
    )
end
