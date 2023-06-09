# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DisableUserAccessToken_request

    DisableUserAccessTokenRequest(;
        token_id=nothing,
    )

    - token_id::String : The personal access token GUID to disable
"""
Base.@kwdef mutable struct DisableUserAccessTokenRequest <: OpenAPI.APIModel
    token_id::Union{Nothing, String} = nothing

    function DisableUserAccessTokenRequest(token_id, )
        OpenAPI.validate_property(DisableUserAccessTokenRequest, Symbol("token_id"), token_id)
        return new(token_id, )
    end
end # type DisableUserAccessTokenRequest

const _property_types_DisableUserAccessTokenRequest = Dict{Symbol,String}(Symbol("token_id")=>"String", )
OpenAPI.property_type(::Type{ DisableUserAccessTokenRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_DisableUserAccessTokenRequest[name]))}

function check_required(o::DisableUserAccessTokenRequest)
    o.token_id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ DisableUserAccessTokenRequest }, name::Symbol, val)
end
