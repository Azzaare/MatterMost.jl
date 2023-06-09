# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OwnerInfo

    OwnerInfo(;
        user_id=nothing,
        username=nothing,
    )

    - user_id::String : A unique, 26 characters long, alphanumeric identifier for the owner.
    - username::String : Owner&#39;s username.
"""
Base.@kwdef mutable struct OwnerInfo <: OpenAPI.APIModel
    user_id::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing

    function OwnerInfo(user_id, username, )
        OpenAPI.validate_property(OwnerInfo, Symbol("user_id"), user_id)
        OpenAPI.validate_property(OwnerInfo, Symbol("username"), username)
        return new(user_id, username, )
    end
end # type OwnerInfo

const _property_types_OwnerInfo = Dict{Symbol,String}(Symbol("user_id")=>"String", Symbol("username")=>"String", )
OpenAPI.property_type(::Type{ OwnerInfo }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_OwnerInfo[name]))}

function check_required(o::OwnerInfo)
    o.user_id === nothing && (return false)
    o.username === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ OwnerInfo }, name::Symbol, val)
end
