# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct ClusterApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `ClusterApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ ClusterApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_get_cluster_status_ClusterApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{ClusterInfo},
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_cluster_status(_api::ClusterApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_cluster_status_ClusterApi, "/cluster/status", ["bearerAuth", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get cluster status

Get a set of information for each node in the cluster, useful for checking the status and health of each node. ##### Permissions Must have `manage_system` permission. 

Params:

Return: Vector{ClusterInfo}, OpenAPI.Clients.ApiResponse
"""
function get_cluster_status(_api::ClusterApi; _mediaType=nothing)
    _ctx = _oacinternal_get_cluster_status(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_cluster_status(_api::ClusterApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_get_cluster_status(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_cluster_status
