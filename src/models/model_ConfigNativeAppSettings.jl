# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Config_NativeAppSettings

    ConfigNativeAppSettings(;
        AppDownloadLink=nothing,
        AndroidAppDownloadLink=nothing,
        IosAppDownloadLink=nothing,
    )

    - AppDownloadLink::String
    - AndroidAppDownloadLink::String
    - IosAppDownloadLink::String
"""
Base.@kwdef mutable struct ConfigNativeAppSettings <: OpenAPI.APIModel
    AppDownloadLink::Union{Nothing, String} = nothing
    AndroidAppDownloadLink::Union{Nothing, String} = nothing
    IosAppDownloadLink::Union{Nothing, String} = nothing

    function ConfigNativeAppSettings(AppDownloadLink, AndroidAppDownloadLink, IosAppDownloadLink, )
        OpenAPI.validate_property(ConfigNativeAppSettings, Symbol("AppDownloadLink"), AppDownloadLink)
        OpenAPI.validate_property(ConfigNativeAppSettings, Symbol("AndroidAppDownloadLink"), AndroidAppDownloadLink)
        OpenAPI.validate_property(ConfigNativeAppSettings, Symbol("IosAppDownloadLink"), IosAppDownloadLink)
        return new(AppDownloadLink, AndroidAppDownloadLink, IosAppDownloadLink, )
    end
end # type ConfigNativeAppSettings

const _property_types_ConfigNativeAppSettings = Dict{Symbol,String}(Symbol("AppDownloadLink")=>"String", Symbol("AndroidAppDownloadLink")=>"String", Symbol("IosAppDownloadLink")=>"String", )
OpenAPI.property_type(::Type{ ConfigNativeAppSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ConfigNativeAppSettings[name]))}

function check_required(o::ConfigNativeAppSettings)
    true
end

function OpenAPI.validate_property(::Type{ ConfigNativeAppSettings }, name::Symbol, val)
end
