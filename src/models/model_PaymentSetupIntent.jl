# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PaymentSetupIntent

    PaymentSetupIntent(;
        id=nothing,
        client_secret=nothing,
    )

    - id::String
    - client_secret::String
"""
Base.@kwdef mutable struct PaymentSetupIntent <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    client_secret::Union{Nothing, String} = nothing

    function PaymentSetupIntent(id, client_secret, )
        OpenAPI.validate_property(PaymentSetupIntent, Symbol("id"), id)
        OpenAPI.validate_property(PaymentSetupIntent, Symbol("client_secret"), client_secret)
        return new(id, client_secret, )
    end
end # type PaymentSetupIntent

const _property_types_PaymentSetupIntent = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("client_secret")=>"String", )
OpenAPI.property_type(::Type{ PaymentSetupIntent }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PaymentSetupIntent[name]))}

function check_required(o::PaymentSetupIntent)
    true
end

function OpenAPI.validate_property(::Type{ PaymentSetupIntent }, name::Symbol, val)
end