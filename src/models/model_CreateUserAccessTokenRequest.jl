# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateUserAccessToken_request

    CreateUserAccessTokenRequest(;
        description=nothing,
    )

    - description::String : A description of the token usage
"""
Base.@kwdef mutable struct CreateUserAccessTokenRequest <: OpenAPI.APIModel
    description::Union{Nothing, String} = nothing

    function CreateUserAccessTokenRequest(description, )
        OpenAPI.validate_property(CreateUserAccessTokenRequest, Symbol("description"), description)
        return new(description, )
    end
end # type CreateUserAccessTokenRequest

const _property_types_CreateUserAccessTokenRequest = Dict{Symbol,String}(Symbol("description")=>"String", )
OpenAPI.property_type(::Type{ CreateUserAccessTokenRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateUserAccessTokenRequest[name]))}

function check_required(o::CreateUserAccessTokenRequest)
    o.description === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateUserAccessTokenRequest }, name::Symbol, val)
end
