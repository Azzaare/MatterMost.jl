# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct ExportsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `ExportsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ ExportsApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_delete_export_ExportsApi = Dict{Regex,Type}(
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("500", "x"=>".") * "\$") => AppError,
)

function _oacinternal_delete_export(_api::ExportsApi, export_name::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "DELETE", _returntypes_delete_export_ExportsApi, "/exports/{export_name}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "export_name", export_name)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Delete an export file

Deletes an export file.   __Minimum server version__: 5.33  ##### Permissions  Must have `manage_system` permissions. 

Params:
- export_name::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function delete_export(_api::ExportsApi, export_name::String; _mediaType=nothing)
    _ctx = _oacinternal_delete_export(_api, export_name; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function delete_export(_api::ExportsApi, response_stream::Channel, export_name::String; _mediaType=nothing)
    _ctx = _oacinternal_delete_export(_api, export_name; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_download_export_ExportsApi = Dict{Regex,Type}(
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("500", "x"=>".") * "\$") => AppError,
)

function _oacinternal_download_export(_api::ExportsApi, export_name::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_download_export_ExportsApi, "/exports/{export_name}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "export_name", export_name)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Download an export file

Downloads an export file.   __Minimum server version__: 5.33  ##### Permissions  Must have `manage_system` permissions. 

Params:
- export_name::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function download_export(_api::ExportsApi, export_name::String; _mediaType=nothing)
    _ctx = _oacinternal_download_export(_api, export_name; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function download_export(_api::ExportsApi, response_stream::Channel, export_name::String; _mediaType=nothing)
    _ctx = _oacinternal_download_export(_api, export_name; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_list_exports_ExportsApi = Dict{Regex,Type}(
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("500", "x"=>".") * "\$") => AppError,
)

function _oacinternal_list_exports(_api::ExportsApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_list_exports_ExportsApi, "/exports", ["bearerAuth", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List export files

Lists all available export files. __Minimum server version__: 5.33 ##### Permissions Must have `manage_system` permissions. 

Params:

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function list_exports(_api::ExportsApi; _mediaType=nothing)
    _ctx = _oacinternal_list_exports(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function list_exports(_api::ExportsApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_list_exports(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export delete_export
export download_export
export list_exports