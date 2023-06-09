# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct OAuthApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `OAuthApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ OAuthApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_create_o_auth_app_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => OAuthApp,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_create_o_auth_app(_api::OAuthApi, create_o_auth_app_request::CreateOAuthAppRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_o_auth_app_OAuthApi, "/oauth/apps", ["bearerAuth", ], create_o_auth_app_request)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Register OAuth app

Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission. 

Params:
- create_o_auth_app_request::CreateOAuthAppRequest (required)

Return: OAuthApp, OpenAPI.Clients.ApiResponse
"""
function create_o_auth_app(_api::OAuthApi, create_o_auth_app_request::CreateOAuthAppRequest; _mediaType=nothing)
    _ctx = _oacinternal_create_o_auth_app(_api, create_o_auth_app_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_o_auth_app(_api::OAuthApi, response_stream::Channel, create_o_auth_app_request::CreateOAuthAppRequest; _mediaType=nothing)
    _ctx = _oacinternal_create_o_auth_app(_api, create_o_auth_app_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_delete_o_auth_app_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => StatusOK,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_delete_o_auth_app(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "DELETE", _returntypes_delete_o_auth_app_OAuthApi, "/oauth/apps/{app_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "app_id", app_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Delete an OAuth app

Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

Params:
- app_id::String (required)

Return: StatusOK, OpenAPI.Clients.ApiResponse
"""
function delete_o_auth_app(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_delete_o_auth_app(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function delete_o_auth_app(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_delete_o_auth_app(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_authorized_o_auth_apps_for_user_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{OAuthApp},
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_authorized_o_auth_apps_for_user(_api::OAuthApi, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_authorized_o_auth_apps_for_user_OAuthApi, "/users/{user_id}/oauth/apps/authorized", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get authorized OAuth apps

Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission. 

Params:
- user_id::String (required)
- page::Int64
- per_page::Int64

Return: Vector{OAuthApp}, OpenAPI.Clients.ApiResponse
"""
function get_authorized_o_auth_apps_for_user(_api::OAuthApi, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_authorized_o_auth_apps_for_user(_api, user_id; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_authorized_o_auth_apps_for_user(_api::OAuthApi, response_stream::Channel, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_authorized_o_auth_apps_for_user(_api, user_id; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_o_auth_app_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => OAuthApp,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_o_auth_app(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_o_auth_app_OAuthApi, "/oauth/apps/{app_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "app_id", app_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get an OAuth app

Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

Params:
- app_id::String (required)

Return: OAuthApp, OpenAPI.Clients.ApiResponse
"""
function get_o_auth_app(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_o_auth_app(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_o_auth_app(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_o_auth_app(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_o_auth_app_info_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => OAuthApp,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_o_auth_app_info(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_o_auth_app_info_OAuthApi, "/oauth/apps/{app_id}/info", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "app_id", app_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get info on an OAuth app

Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated. 

Params:
- app_id::String (required)

Return: OAuthApp, OpenAPI.Clients.ApiResponse
"""
function get_o_auth_app_info(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_o_auth_app_info(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_o_auth_app_info(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_o_auth_app_info(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_o_auth_apps_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{OAuthApp},
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_o_auth_apps(_api::OAuthApi; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_o_auth_apps_OAuthApi, "/oauth/apps", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get OAuth apps

Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned. 

Params:
- page::Int64
- per_page::Int64

Return: Vector{OAuthApp}, OpenAPI.Clients.ApiResponse
"""
function get_o_auth_apps(_api::OAuthApi; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_o_auth_apps(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_o_auth_apps(_api::OAuthApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_o_auth_apps(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_regenerate_o_auth_app_secret_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => OAuthApp,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_regenerate_o_auth_app_secret(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_regenerate_o_auth_app_secret_OAuthApi, "/oauth/apps/{app_id}/regen_secret", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "app_id", app_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Regenerate OAuth app secret

Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

Params:
- app_id::String (required)

Return: OAuthApp, OpenAPI.Clients.ApiResponse
"""
function regenerate_o_auth_app_secret(_api::OAuthApi, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_regenerate_o_auth_app_secret(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function regenerate_o_auth_app_secret(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing)
    _ctx = _oacinternal_regenerate_o_auth_app_secret(_api, app_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_update_o_auth_app_OAuthApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => OAuthApp,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("404", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_update_o_auth_app(_api::OAuthApi, app_id::String, update_o_auth_app_request::UpdateOAuthAppRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "PUT", _returntypes_update_o_auth_app_OAuthApi, "/oauth/apps/{app_id}", ["bearerAuth", ], update_o_auth_app_request)
    OpenAPI.Clients.set_param(_ctx.path, "app_id", app_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Update an OAuth app

Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

Params:
- app_id::String (required)
- update_o_auth_app_request::UpdateOAuthAppRequest (required)

Return: OAuthApp, OpenAPI.Clients.ApiResponse
"""
function update_o_auth_app(_api::OAuthApi, app_id::String, update_o_auth_app_request::UpdateOAuthAppRequest; _mediaType=nothing)
    _ctx = _oacinternal_update_o_auth_app(_api, app_id, update_o_auth_app_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function update_o_auth_app(_api::OAuthApi, response_stream::Channel, app_id::String, update_o_auth_app_request::UpdateOAuthAppRequest; _mediaType=nothing)
    _ctx = _oacinternal_update_o_auth_app(_api, app_id, update_o_auth_app_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export create_o_auth_app
export delete_o_auth_app
export get_authorized_o_auth_apps_for_user
export get_o_auth_app
export get_o_auth_app_info
export get_o_auth_apps
export regenerate_o_auth_app_secret
export update_o_auth_app
