# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChannelModeratedRolesPatch

    ChannelModeratedRolesPatch(;
        guests=nothing,
        members=nothing,
    )

    - guests::Bool
    - members::Bool
"""
Base.@kwdef mutable struct ChannelModeratedRolesPatch <: OpenAPI.APIModel
    guests::Union{Nothing, Bool} = nothing
    members::Union{Nothing, Bool} = nothing

    function ChannelModeratedRolesPatch(guests, members, )
        OpenAPI.validate_property(ChannelModeratedRolesPatch, Symbol("guests"), guests)
        OpenAPI.validate_property(ChannelModeratedRolesPatch, Symbol("members"), members)
        return new(guests, members, )
    end
end # type ChannelModeratedRolesPatch

const _property_types_ChannelModeratedRolesPatch = Dict{Symbol,String}(Symbol("guests")=>"Bool", Symbol("members")=>"Bool", )
OpenAPI.property_type(::Type{ ChannelModeratedRolesPatch }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChannelModeratedRolesPatch[name]))}

function check_required(o::ChannelModeratedRolesPatch)
    true
end

function OpenAPI.validate_property(::Type{ ChannelModeratedRolesPatch }, name::Symbol, val)
end
