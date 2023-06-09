# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Config_AnalyticsSettings

    ConfigAnalyticsSettings(;
        MaxUsersForStatistics=nothing,
    )

    - MaxUsersForStatistics::Int64
"""
Base.@kwdef mutable struct ConfigAnalyticsSettings <: OpenAPI.APIModel
    MaxUsersForStatistics::Union{Nothing, Int64} = nothing

    function ConfigAnalyticsSettings(MaxUsersForStatistics, )
        OpenAPI.validate_property(ConfigAnalyticsSettings, Symbol("MaxUsersForStatistics"), MaxUsersForStatistics)
        return new(MaxUsersForStatistics, )
    end
end # type ConfigAnalyticsSettings

const _property_types_ConfigAnalyticsSettings = Dict{Symbol,String}(Symbol("MaxUsersForStatistics")=>"Int64", )
OpenAPI.property_type(::Type{ ConfigAnalyticsSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ConfigAnalyticsSettings[name]))}

function check_required(o::ConfigAnalyticsSettings)
    true
end

function OpenAPI.validate_property(::Type{ ConfigAnalyticsSettings }, name::Symbol, val)
end
