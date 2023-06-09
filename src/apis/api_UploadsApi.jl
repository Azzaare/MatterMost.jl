# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct UploadsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `UploadsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ UploadsApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_create_upload_UploadsApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => UploadSession,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("413", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_create_upload(_api::UploadsApi, create_upload_request::CreateUploadRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_upload_UploadsApi, "/uploads", ["bearerAuth", ], create_upload_request)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Create an upload

Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 

Params:
- create_upload_request::CreateUploadRequest (required)

Return: UploadSession, OpenAPI.Clients.ApiResponse
"""
function create_upload(_api::UploadsApi, create_upload_request::CreateUploadRequest; _mediaType=nothing)
    _ctx = _oacinternal_create_upload(_api, create_upload_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_upload(_api::UploadsApi, response_stream::Channel, create_upload_request::CreateUploadRequest; _mediaType=nothing)
    _ctx = _oacinternal_create_upload(_api, create_upload_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_upload_UploadsApi = Dict{Regex,Type}(
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_upload(_api::UploadsApi, upload_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_upload_UploadsApi, "/uploads/{upload_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "upload_id", upload_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get an upload session

Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 

Params:
- upload_id::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function get_upload(_api::UploadsApi, upload_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_upload(_api, upload_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_upload(_api::UploadsApi, response_stream::Channel, upload_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_upload(_api, upload_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_upload_data_UploadsApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => FileInfo,
    Regex("^" * replace("204", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("413", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_upload_data(_api::UploadsApi, upload_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_upload_data_UploadsApi, "/uploads/{upload_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "upload_id", upload_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", ] : [_mediaType])
    return _ctx
end

@doc raw"""Perform a file upload

Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 

Params:
- upload_id::String (required)

Return: FileInfo, OpenAPI.Clients.ApiResponse
"""
function upload_data(_api::UploadsApi, upload_id::String; _mediaType=nothing)
    _ctx = _oacinternal_upload_data(_api, upload_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function upload_data(_api::UploadsApi, response_stream::Channel, upload_id::String; _mediaType=nothing)
    _ctx = _oacinternal_upload_data(_api, upload_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export create_upload
export get_upload
export upload_data
