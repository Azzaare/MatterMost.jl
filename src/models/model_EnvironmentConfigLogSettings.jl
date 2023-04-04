# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""EnvironmentConfig_LogSettings

    EnvironmentConfigLogSettings(;
        EnableConsole=nothing,
        ConsoleLevel=nothing,
        EnableFile=nothing,
        FileLevel=nothing,
        FileLocation=nothing,
        EnableWebhookDebugging=nothing,
        EnableDiagnostics=nothing,
    )

    - EnableConsole::Bool
    - ConsoleLevel::Bool
    - EnableFile::Bool
    - FileLevel::Bool
    - FileLocation::Bool
    - EnableWebhookDebugging::Bool
    - EnableDiagnostics::Bool
"""
Base.@kwdef mutable struct EnvironmentConfigLogSettings <: OpenAPI.APIModel
    EnableConsole::Union{Nothing, Bool} = nothing
    ConsoleLevel::Union{Nothing, Bool} = nothing
    EnableFile::Union{Nothing, Bool} = nothing
    FileLevel::Union{Nothing, Bool} = nothing
    FileLocation::Union{Nothing, Bool} = nothing
    EnableWebhookDebugging::Union{Nothing, Bool} = nothing
    EnableDiagnostics::Union{Nothing, Bool} = nothing

    function EnvironmentConfigLogSettings(EnableConsole, ConsoleLevel, EnableFile, FileLevel, FileLocation, EnableWebhookDebugging, EnableDiagnostics, )
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("EnableConsole"), EnableConsole)
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("ConsoleLevel"), ConsoleLevel)
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("EnableFile"), EnableFile)
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("FileLevel"), FileLevel)
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("FileLocation"), FileLocation)
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("EnableWebhookDebugging"), EnableWebhookDebugging)
        OpenAPI.validate_property(EnvironmentConfigLogSettings, Symbol("EnableDiagnostics"), EnableDiagnostics)
        return new(EnableConsole, ConsoleLevel, EnableFile, FileLevel, FileLocation, EnableWebhookDebugging, EnableDiagnostics, )
    end
end # type EnvironmentConfigLogSettings

const _property_types_EnvironmentConfigLogSettings = Dict{Symbol,String}(Symbol("EnableConsole")=>"Bool", Symbol("ConsoleLevel")=>"Bool", Symbol("EnableFile")=>"Bool", Symbol("FileLevel")=>"Bool", Symbol("FileLocation")=>"Bool", Symbol("EnableWebhookDebugging")=>"Bool", Symbol("EnableDiagnostics")=>"Bool", )
OpenAPI.property_type(::Type{ EnvironmentConfigLogSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_EnvironmentConfigLogSettings[name]))}

function check_required(o::EnvironmentConfigLogSettings)
    true
end

function OpenAPI.validate_property(::Type{ EnvironmentConfigLogSettings }, name::Symbol, val)
end