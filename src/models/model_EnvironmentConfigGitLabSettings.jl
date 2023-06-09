# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""EnvironmentConfig_GitLabSettings

    EnvironmentConfigGitLabSettings(;
        Enable=nothing,
        Secret=nothing,
        Id=nothing,
        Scope=nothing,
        AuthEndpoint=nothing,
        TokenEndpoint=nothing,
        UserApiEndpoint=nothing,
    )

    - Enable::Bool
    - Secret::Bool
    - Id::Bool
    - Scope::Bool
    - AuthEndpoint::Bool
    - TokenEndpoint::Bool
    - UserApiEndpoint::Bool
"""
Base.@kwdef mutable struct EnvironmentConfigGitLabSettings <: OpenAPI.APIModel
    Enable::Union{Nothing, Bool} = nothing
    Secret::Union{Nothing, Bool} = nothing
    Id::Union{Nothing, Bool} = nothing
    Scope::Union{Nothing, Bool} = nothing
    AuthEndpoint::Union{Nothing, Bool} = nothing
    TokenEndpoint::Union{Nothing, Bool} = nothing
    UserApiEndpoint::Union{Nothing, Bool} = nothing

    function EnvironmentConfigGitLabSettings(Enable, Secret, Id, Scope, AuthEndpoint, TokenEndpoint, UserApiEndpoint, )
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("Enable"), Enable)
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("Secret"), Secret)
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("Id"), Id)
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("Scope"), Scope)
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("AuthEndpoint"), AuthEndpoint)
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("TokenEndpoint"), TokenEndpoint)
        OpenAPI.validate_property(EnvironmentConfigGitLabSettings, Symbol("UserApiEndpoint"), UserApiEndpoint)
        return new(Enable, Secret, Id, Scope, AuthEndpoint, TokenEndpoint, UserApiEndpoint, )
    end
end # type EnvironmentConfigGitLabSettings

const _property_types_EnvironmentConfigGitLabSettings = Dict{Symbol,String}(Symbol("Enable")=>"Bool", Symbol("Secret")=>"Bool", Symbol("Id")=>"Bool", Symbol("Scope")=>"Bool", Symbol("AuthEndpoint")=>"Bool", Symbol("TokenEndpoint")=>"Bool", Symbol("UserApiEndpoint")=>"Bool", )
OpenAPI.property_type(::Type{ EnvironmentConfigGitLabSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_EnvironmentConfigGitLabSettings[name]))}

function check_required(o::EnvironmentConfigGitLabSettings)
    true
end

function OpenAPI.validate_property(::Type{ EnvironmentConfigGitLabSettings }, name::Symbol, val)
end
