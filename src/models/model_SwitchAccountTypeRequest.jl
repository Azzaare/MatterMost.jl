# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SwitchAccountType_request

    SwitchAccountTypeRequest(;
        current_service=nothing,
        new_service=nothing,
        email=nothing,
        password=nothing,
        mfa_code=nothing,
        ldap_id=nothing,
    )

    - current_service::String : The service the user currently uses to login
    - new_service::String : The service the user will use to login
    - email::String : The email of the user
    - password::String : The password used with the current service
    - mfa_code::String : The MFA code of the current service
    - ldap_id::String : The LDAP/AD id of the user
"""
Base.@kwdef mutable struct SwitchAccountTypeRequest <: OpenAPI.APIModel
    current_service::Union{Nothing, String} = nothing
    new_service::Union{Nothing, String} = nothing
    email::Union{Nothing, String} = nothing
    password::Union{Nothing, String} = nothing
    mfa_code::Union{Nothing, String} = nothing
    ldap_id::Union{Nothing, String} = nothing

    function SwitchAccountTypeRequest(current_service, new_service, email, password, mfa_code, ldap_id, )
        OpenAPI.validate_property(SwitchAccountTypeRequest, Symbol("current_service"), current_service)
        OpenAPI.validate_property(SwitchAccountTypeRequest, Symbol("new_service"), new_service)
        OpenAPI.validate_property(SwitchAccountTypeRequest, Symbol("email"), email)
        OpenAPI.validate_property(SwitchAccountTypeRequest, Symbol("password"), password)
        OpenAPI.validate_property(SwitchAccountTypeRequest, Symbol("mfa_code"), mfa_code)
        OpenAPI.validate_property(SwitchAccountTypeRequest, Symbol("ldap_id"), ldap_id)
        return new(current_service, new_service, email, password, mfa_code, ldap_id, )
    end
end # type SwitchAccountTypeRequest

const _property_types_SwitchAccountTypeRequest = Dict{Symbol,String}(Symbol("current_service")=>"String", Symbol("new_service")=>"String", Symbol("email")=>"String", Symbol("password")=>"String", Symbol("mfa_code")=>"String", Symbol("ldap_id")=>"String", )
OpenAPI.property_type(::Type{ SwitchAccountTypeRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SwitchAccountTypeRequest[name]))}

function check_required(o::SwitchAccountTypeRequest)
    o.current_service === nothing && (return false)
    o.new_service === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ SwitchAccountTypeRequest }, name::Symbol, val)
end
