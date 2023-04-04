# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct SharedChannelsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `SharedChannelsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ SharedChannelsApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_get_all_shared_channels_SharedChannelsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{SharedChannel},
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_all_shared_channels(_api::SharedChannelsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_all_shared_channels_SharedChannelsApi, "/sharedchannels/{team_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "team_id", team_id)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get all shared channels for team.

Get all shared channels for a team.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated. 

Params:
- team_id::String (required)
- page::Int64
- per_page::Int64

Return: Vector{SharedChannel}, OpenAPI.Clients.ApiResponse
"""
function get_all_shared_channels(_api::SharedChannelsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_all_shared_channels(_api, team_id; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_all_shared_channels(_api::SharedChannelsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_all_shared_channels(_api, team_id; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_remote_cluster_info_SharedChannelsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => RemoteClusterInfo,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_remote_cluster_info(_api::SharedChannelsApi, remote_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_remote_cluster_info_SharedChannelsApi, "/sharedchannels/remote_info/{remote_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "remote_id", remote_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get remote cluster info by ID for user.

Get remote cluster info based on remoteId.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated and user must belong to at least one channel shared with the remote cluster. 

Params:
- remote_id::String (required)

Return: RemoteClusterInfo, OpenAPI.Clients.ApiResponse
"""
function get_remote_cluster_info(_api::SharedChannelsApi, remote_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_remote_cluster_info(_api, remote_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_remote_cluster_info(_api::SharedChannelsApi, response_stream::Channel, remote_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_remote_cluster_info(_api, remote_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_all_shared_channels
export get_remote_cluster_info