# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SystemStatusResponse

    SystemStatusResponse(;
        AndroidLatestVersion=nothing,
        AndroidMinVersion=nothing,
        DesktopLatestVersion=nothing,
        DesktopMinVersion=nothing,
        IosLatestVersion=nothing,
        IosMinVersion=nothing,
        database_status=nothing,
        filestore_status=nothing,
        status=nothing,
        CanReceiveNotifications=nothing,
    )

    - AndroidLatestVersion::String : Latest Android version supported
    - AndroidMinVersion::String : Minimum Android version supported
    - DesktopLatestVersion::String : Latest desktop version supported
    - DesktopMinVersion::String : Minimum desktop version supported
    - IosLatestVersion::String : Latest iOS version supported
    - IosMinVersion::String : Minimum iOS version supported
    - database_status::String : Status of database (\&quot;OK\&quot; or \&quot;UNHEALTHY\&quot;). Included when get_server_status parameter set.
    - filestore_status::String : Status of filestore (\&quot;OK\&quot; or \&quot;UNHEALTHY\&quot;). Included when get_server_status parameter set.
    - status::String : Status of server (\&quot;OK\&quot; or \&quot;UNHEALTHY\&quot;). Included when get_server_status parameter set.
    - CanReceiveNotifications::String : Whether the device id provided can receive notifications (\&quot;true\&quot;, \&quot;false\&quot; or \&quot;unknown\&quot;). Included when device_id parameter set.
"""
Base.@kwdef mutable struct SystemStatusResponse <: OpenAPI.APIModel
    AndroidLatestVersion::Union{Nothing, String} = nothing
    AndroidMinVersion::Union{Nothing, String} = nothing
    DesktopLatestVersion::Union{Nothing, String} = nothing
    DesktopMinVersion::Union{Nothing, String} = nothing
    IosLatestVersion::Union{Nothing, String} = nothing
    IosMinVersion::Union{Nothing, String} = nothing
    database_status::Union{Nothing, String} = nothing
    filestore_status::Union{Nothing, String} = nothing
    status::Union{Nothing, String} = nothing
    CanReceiveNotifications::Union{Nothing, String} = nothing

    function SystemStatusResponse(AndroidLatestVersion, AndroidMinVersion, DesktopLatestVersion, DesktopMinVersion, IosLatestVersion, IosMinVersion, database_status, filestore_status, status, CanReceiveNotifications, )
        OpenAPI.validate_property(SystemStatusResponse, Symbol("AndroidLatestVersion"), AndroidLatestVersion)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("AndroidMinVersion"), AndroidMinVersion)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("DesktopLatestVersion"), DesktopLatestVersion)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("DesktopMinVersion"), DesktopMinVersion)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("IosLatestVersion"), IosLatestVersion)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("IosMinVersion"), IosMinVersion)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("database_status"), database_status)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("filestore_status"), filestore_status)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("status"), status)
        OpenAPI.validate_property(SystemStatusResponse, Symbol("CanReceiveNotifications"), CanReceiveNotifications)
        return new(AndroidLatestVersion, AndroidMinVersion, DesktopLatestVersion, DesktopMinVersion, IosLatestVersion, IosMinVersion, database_status, filestore_status, status, CanReceiveNotifications, )
    end
end # type SystemStatusResponse

const _property_types_SystemStatusResponse = Dict{Symbol,String}(Symbol("AndroidLatestVersion")=>"String", Symbol("AndroidMinVersion")=>"String", Symbol("DesktopLatestVersion")=>"String", Symbol("DesktopMinVersion")=>"String", Symbol("IosLatestVersion")=>"String", Symbol("IosMinVersion")=>"String", Symbol("database_status")=>"String", Symbol("filestore_status")=>"String", Symbol("status")=>"String", Symbol("CanReceiveNotifications")=>"String", )
OpenAPI.property_type(::Type{ SystemStatusResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SystemStatusResponse[name]))}

function check_required(o::SystemStatusResponse)
    true
end

function OpenAPI.validate_property(::Type{ SystemStatusResponse }, name::Symbol, val)
end