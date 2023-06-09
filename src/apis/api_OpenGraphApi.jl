# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct OpenGraphApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `OpenGraphApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ OpenGraphApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_open_graph_OpenGraphApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => OpenGraph,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_open_graph(_api::OpenGraphApi, open_graph_request::OpenGraphRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_open_graph_OpenGraphApi, "/opengraph", ["bearerAuth", ], open_graph_request)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Get open graph metadata for url

Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 

Params:
- open_graph_request::OpenGraphRequest (required)

Return: OpenGraph, OpenAPI.Clients.ApiResponse
"""
function open_graph(_api::OpenGraphApi, open_graph_request::OpenGraphRequest; _mediaType=nothing)
    _ctx = _oacinternal_open_graph(_api, open_graph_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function open_graph(_api::OpenGraphApi, response_stream::Channel, open_graph_request::OpenGraphRequest; _mediaType=nothing)
    _ctx = _oacinternal_open_graph(_api, open_graph_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export open_graph
