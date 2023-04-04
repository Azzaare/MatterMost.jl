# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct StatusApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `StatusApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ StatusApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_get_user_status_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Status,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_user_status(_api::StatusApi, user_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_user_status_StatusApi, "/users/{user_id}/status", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get user status

Get user status by id from the server. ##### Permissions Must be authenticated. 

Params:
- user_id::String (required)

Return: Status, OpenAPI.Clients.ApiResponse
"""
function get_user_status(_api::StatusApi, user_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_user_status(_api, user_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_user_status(_api::StatusApi, response_stream::Channel, user_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_user_status(_api, user_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_users_statuses_by_ids_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Status},
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_users_statuses_by_ids(_api::StatusApi, request_body::Vector{String}; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_get_users_statuses_by_ids_StatusApi, "/users/status/ids", ["bearerAuth", ], request_body)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Get user statuses by id

Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 

Params:
- request_body::Vector{String} (required)

Return: Vector{Status}, OpenAPI.Clients.ApiResponse
"""
function get_users_statuses_by_ids(_api::StatusApi, request_body::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_get_users_statuses_by_ids(_api, request_body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_users_statuses_by_ids(_api::StatusApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_get_users_statuses_by_ids(_api, request_body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_user_recent_custom_status_delete_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_post_user_recent_custom_status_delete(_api::StatusApi, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_user_recent_custom_status_delete_StatusApi, "/users/{user_id}/status/custom/recent/delete", ["bearerAuth", ], remove_recent_custom_status_request)
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

Params:
- user_id::String (required)
- remove_recent_custom_status_request::RemoveRecentCustomStatusRequest (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function post_user_recent_custom_status_delete(_api::StatusApi, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_post_user_recent_custom_status_delete(_api, user_id, remove_recent_custom_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_user_recent_custom_status_delete(_api::StatusApi, response_stream::Channel, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_post_user_recent_custom_status_delete(_api, user_id, remove_recent_custom_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_remove_recent_custom_status_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_remove_recent_custom_status(_api::StatusApi, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "DELETE", _returntypes_remove_recent_custom_status_StatusApi, "/users/{user_id}/status/custom/recent", ["bearerAuth", ], remove_recent_custom_status_request)
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

Params:
- user_id::String (required)
- remove_recent_custom_status_request::RemoveRecentCustomStatusRequest (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function remove_recent_custom_status(_api::StatusApi, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_remove_recent_custom_status(_api, user_id, remove_recent_custom_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function remove_recent_custom_status(_api::StatusApi, response_stream::Channel, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_remove_recent_custom_status(_api, user_id, remove_recent_custom_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_unset_user_custom_status_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_unset_user_custom_status(_api::StatusApi, user_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "DELETE", _returntypes_unset_user_custom_status_StatusApi, "/users/{user_id}/status/custom", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Unsets user custom status

Unsets a user's custom status by updating the user's props and updates the user ##### Permissions Must be logged in as the user whose custom status is being removed. 

Params:
- user_id::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function unset_user_custom_status(_api::StatusApi, user_id::String; _mediaType=nothing)
    _ctx = _oacinternal_unset_user_custom_status(_api, user_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function unset_user_custom_status(_api::StatusApi, response_stream::Channel, user_id::String; _mediaType=nothing)
    _ctx = _oacinternal_unset_user_custom_status(_api, user_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_update_user_custom_status_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_update_user_custom_status(_api::StatusApi, user_id::String, update_user_custom_status_request::UpdateUserCustomStatusRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "PUT", _returntypes_update_user_custom_status_StatusApi, "/users/{user_id}/status/custom", ["bearerAuth", ], update_user_custom_status_request)
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Update user custom status

Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 

Params:
- user_id::String (required)
- update_user_custom_status_request::UpdateUserCustomStatusRequest (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function update_user_custom_status(_api::StatusApi, user_id::String, update_user_custom_status_request::UpdateUserCustomStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_update_user_custom_status(_api, user_id, update_user_custom_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function update_user_custom_status(_api::StatusApi, response_stream::Channel, user_id::String, update_user_custom_status_request::UpdateUserCustomStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_update_user_custom_status(_api, user_id, update_user_custom_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_update_user_status_StatusApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Status,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
)

function _oacinternal_update_user_status(_api::StatusApi, user_id::String, update_user_status_request::UpdateUserStatusRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "PUT", _returntypes_update_user_status_StatusApi, "/users/{user_id}/status", ["bearerAuth", ], update_user_status_request)
    OpenAPI.Clients.set_param(_ctx.path, "user_id", user_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Update user status

Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 

Params:
- user_id::String (required)
- update_user_status_request::UpdateUserStatusRequest (required)

Return: Status, OpenAPI.Clients.ApiResponse
"""
function update_user_status(_api::StatusApi, user_id::String, update_user_status_request::UpdateUserStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_update_user_status(_api, user_id, update_user_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function update_user_status(_api::StatusApi, response_stream::Channel, user_id::String, update_user_status_request::UpdateUserStatusRequest; _mediaType=nothing)
    _ctx = _oacinternal_update_user_status(_api, user_id, update_user_status_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_user_status
export get_users_statuses_by_ids
export post_user_recent_custom_status_delete
export remove_recent_custom_status
export unset_user_custom_status
export update_user_custom_status
export update_user_status
