# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChannelStats

    ChannelStats(;
        channel_id=nothing,
        member_count=nothing,
    )

    - channel_id::String
    - member_count::Int64
"""
Base.@kwdef mutable struct ChannelStats <: OpenAPI.APIModel
    channel_id::Union{Nothing, String} = nothing
    member_count::Union{Nothing, Int64} = nothing

    function ChannelStats(channel_id, member_count, )
        OpenAPI.validate_property(ChannelStats, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(ChannelStats, Symbol("member_count"), member_count)
        return new(channel_id, member_count, )
    end
end # type ChannelStats

const _property_types_ChannelStats = Dict{Symbol,String}(Symbol("channel_id")=>"String", Symbol("member_count")=>"Int64", )
OpenAPI.property_type(::Type{ ChannelStats }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChannelStats[name]))}

function check_required(o::ChannelStats)
    true
end

function OpenAPI.validate_property(::Type{ ChannelStats }, name::Symbol, val)
end
