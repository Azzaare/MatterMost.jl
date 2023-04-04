# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct ComplianceApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `ComplianceApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ ComplianceApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_create_compliance_report_ComplianceApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => Compliance,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_create_compliance_report(_api::ComplianceApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_compliance_report_ComplianceApi, "/compliance/reports", ["bearerAuth", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Create report

Create and save a compliance report. ##### Permissions Must have `manage_system` permission. 

Params:

Return: Compliance, OpenAPI.Clients.ApiResponse
"""
function create_compliance_report(_api::ComplianceApi; _mediaType=nothing)
    _ctx = _oacinternal_create_compliance_report(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_compliance_report(_api::ComplianceApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_create_compliance_report(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_download_compliance_report_ComplianceApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_download_compliance_report(_api::ComplianceApi, report_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_download_compliance_report_ComplianceApi, "/compliance/reports/{report_id}/download", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "report_id", report_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Download a report

Download the full contents of a report as a file. ##### Permissions Must have `manage_system` permission. 

Params:
- report_id::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function download_compliance_report(_api::ComplianceApi, report_id::String; _mediaType=nothing)
    _ctx = _oacinternal_download_compliance_report(_api, report_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function download_compliance_report(_api::ComplianceApi, response_stream::Channel, report_id::String; _mediaType=nothing)
    _ctx = _oacinternal_download_compliance_report(_api, report_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_compliance_report_ComplianceApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Compliance,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_compliance_report(_api::ComplianceApi, report_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_compliance_report_ComplianceApi, "/compliance/reports/{report_id}", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "report_id", report_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get a report

Get a compliance reports previously created. ##### Permissions Must have `manage_system` permission. 

Params:
- report_id::String (required)

Return: Compliance, OpenAPI.Clients.ApiResponse
"""
function get_compliance_report(_api::ComplianceApi, report_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_compliance_report(_api, report_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_compliance_report(_api::ComplianceApi, response_stream::Channel, report_id::String; _mediaType=nothing)
    _ctx = _oacinternal_get_compliance_report(_api, report_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_compliance_reports_ComplianceApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Compliance},
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("401", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("403", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_get_compliance_reports(_api::ComplianceApi; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_compliance_reports_ComplianceApi, "/compliance/reports", ["bearerAuth", ])
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get reports

Get a list of compliance reports previously created by page, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

Params:
- page::Int64
- per_page::Int64

Return: Vector{Compliance}, OpenAPI.Clients.ApiResponse
"""
function get_compliance_reports(_api::ComplianceApi; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_compliance_reports(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_compliance_reports(_api::ComplianceApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_compliance_reports(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export create_compliance_report
export download_compliance_report
export get_compliance_report
export get_compliance_reports