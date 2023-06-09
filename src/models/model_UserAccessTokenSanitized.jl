# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UserAccessTokenSanitized

    UserAccessTokenSanitized(;
        id=nothing,
        user_id=nothing,
        description=nothing,
        is_active=nothing,
    )

    - id::String : Unique identifier for the token
    - user_id::String : The user the token authenticates for
    - description::String : A description of the token usage
    - is_active::Bool : Indicates whether the token is active
"""
Base.@kwdef mutable struct UserAccessTokenSanitized <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    user_id::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    is_active::Union{Nothing, Bool} = nothing

    function UserAccessTokenSanitized(id, user_id, description, is_active, )
        OpenAPI.validate_property(UserAccessTokenSanitized, Symbol("id"), id)
        OpenAPI.validate_property(UserAccessTokenSanitized, Symbol("user_id"), user_id)
        OpenAPI.validate_property(UserAccessTokenSanitized, Symbol("description"), description)
        OpenAPI.validate_property(UserAccessTokenSanitized, Symbol("is_active"), is_active)
        return new(id, user_id, description, is_active, )
    end
end # type UserAccessTokenSanitized

const _property_types_UserAccessTokenSanitized = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("user_id")=>"String", Symbol("description")=>"String", Symbol("is_active")=>"Bool", )
OpenAPI.property_type(::Type{ UserAccessTokenSanitized }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UserAccessTokenSanitized[name]))}

function check_required(o::UserAccessTokenSanitized)
    true
end

function OpenAPI.validate_property(::Type{ UserAccessTokenSanitized }, name::Symbol, val)
end
