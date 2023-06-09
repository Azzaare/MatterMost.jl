# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SendVerificationEmail_request

    SendVerificationEmailRequest(;
        email=nothing,
    )

    - email::String : Email of a user
"""
Base.@kwdef mutable struct SendVerificationEmailRequest <: OpenAPI.APIModel
    email::Union{Nothing, String} = nothing

    function SendVerificationEmailRequest(email, )
        OpenAPI.validate_property(SendVerificationEmailRequest, Symbol("email"), email)
        return new(email, )
    end
end # type SendVerificationEmailRequest

const _property_types_SendVerificationEmailRequest = Dict{Symbol,String}(Symbol("email")=>"String", )
OpenAPI.property_type(::Type{ SendVerificationEmailRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SendVerificationEmailRequest[name]))}

function check_required(o::SendVerificationEmailRequest)
    o.email === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ SendVerificationEmailRequest }, name::Symbol, val)
end
