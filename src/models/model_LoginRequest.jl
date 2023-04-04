# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Login_request

    LoginRequest(;
        id=nothing,
        login_id=nothing,
        token=nothing,
        device_id=nothing,
        ldap_only=nothing,
        password=nothing,
    )

    - id::String
    - login_id::String
    - token::String
    - device_id::String
    - ldap_only::Bool
    - password::String : The password used for email authentication.
"""
Base.@kwdef mutable struct LoginRequest <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    login_id::Union{Nothing, String} = nothing
    token::Union{Nothing, String} = nothing
    device_id::Union{Nothing, String} = nothing
    ldap_only::Union{Nothing, Bool} = nothing
    password::Union{Nothing, String} = nothing

    function LoginRequest(id, login_id, token, device_id, ldap_only, password, )
        OpenAPI.validate_property(LoginRequest, Symbol("id"), id)
        OpenAPI.validate_property(LoginRequest, Symbol("login_id"), login_id)
        OpenAPI.validate_property(LoginRequest, Symbol("token"), token)
        OpenAPI.validate_property(LoginRequest, Symbol("device_id"), device_id)
        OpenAPI.validate_property(LoginRequest, Symbol("ldap_only"), ldap_only)
        OpenAPI.validate_property(LoginRequest, Symbol("password"), password)
        return new(id, login_id, token, device_id, ldap_only, password, )
    end
end # type LoginRequest

const _property_types_LoginRequest = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("login_id")=>"String", Symbol("token")=>"String", Symbol("device_id")=>"String", Symbol("ldap_only")=>"Bool", Symbol("password")=>"String", )
OpenAPI.property_type(::Type{ LoginRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_LoginRequest[name]))}

function check_required(o::LoginRequest)
    true
end

function OpenAPI.validate_property(::Type{ LoginRequest }, name::Symbol, val)
end
