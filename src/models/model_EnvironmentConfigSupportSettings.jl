# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""EnvironmentConfig_SupportSettings

    EnvironmentConfigSupportSettings(;
        TermsOfServiceLink=nothing,
        PrivacyPolicyLink=nothing,
        AboutLink=nothing,
        HelpLink=nothing,
        ReportAProblemLink=nothing,
        SupportEmail=nothing,
    )

    - TermsOfServiceLink::Bool
    - PrivacyPolicyLink::Bool
    - AboutLink::Bool
    - HelpLink::Bool
    - ReportAProblemLink::Bool
    - SupportEmail::Bool
"""
Base.@kwdef mutable struct EnvironmentConfigSupportSettings <: OpenAPI.APIModel
    TermsOfServiceLink::Union{Nothing, Bool} = nothing
    PrivacyPolicyLink::Union{Nothing, Bool} = nothing
    AboutLink::Union{Nothing, Bool} = nothing
    HelpLink::Union{Nothing, Bool} = nothing
    ReportAProblemLink::Union{Nothing, Bool} = nothing
    SupportEmail::Union{Nothing, Bool} = nothing

    function EnvironmentConfigSupportSettings(TermsOfServiceLink, PrivacyPolicyLink, AboutLink, HelpLink, ReportAProblemLink, SupportEmail, )
        OpenAPI.validate_property(EnvironmentConfigSupportSettings, Symbol("TermsOfServiceLink"), TermsOfServiceLink)
        OpenAPI.validate_property(EnvironmentConfigSupportSettings, Symbol("PrivacyPolicyLink"), PrivacyPolicyLink)
        OpenAPI.validate_property(EnvironmentConfigSupportSettings, Symbol("AboutLink"), AboutLink)
        OpenAPI.validate_property(EnvironmentConfigSupportSettings, Symbol("HelpLink"), HelpLink)
        OpenAPI.validate_property(EnvironmentConfigSupportSettings, Symbol("ReportAProblemLink"), ReportAProblemLink)
        OpenAPI.validate_property(EnvironmentConfigSupportSettings, Symbol("SupportEmail"), SupportEmail)
        return new(TermsOfServiceLink, PrivacyPolicyLink, AboutLink, HelpLink, ReportAProblemLink, SupportEmail, )
    end
end # type EnvironmentConfigSupportSettings

const _property_types_EnvironmentConfigSupportSettings = Dict{Symbol,String}(Symbol("TermsOfServiceLink")=>"Bool", Symbol("PrivacyPolicyLink")=>"Bool", Symbol("AboutLink")=>"Bool", Symbol("HelpLink")=>"Bool", Symbol("ReportAProblemLink")=>"Bool", Symbol("SupportEmail")=>"Bool", )
OpenAPI.property_type(::Type{ EnvironmentConfigSupportSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_EnvironmentConfigSupportSettings[name]))}

function check_required(o::EnvironmentConfigSupportSettings)
    true
end

function OpenAPI.validate_property(::Type{ EnvironmentConfigSupportSettings }, name::Symbol, val)
end
