# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChannelMemberWithTeamData_allOf

    ChannelMemberWithTeamDataAllOf(;
        team_display_name=nothing,
        team_name=nothing,
        team_update_at=nothing,
    )

    - team_display_name::String : The display name of the team to which this channel belongs.
    - team_name::String : The name of the team to which this channel belongs.
    - team_update_at::Int64 : The time at which the team to which this channel belongs was last updated.
"""
Base.@kwdef mutable struct ChannelMemberWithTeamDataAllOf <: OpenAPI.APIModel
    team_display_name::Union{Nothing, String} = nothing
    team_name::Union{Nothing, String} = nothing
    team_update_at::Union{Nothing, Int64} = nothing

    function ChannelMemberWithTeamDataAllOf(team_display_name, team_name, team_update_at, )
        OpenAPI.validate_property(ChannelMemberWithTeamDataAllOf, Symbol("team_display_name"), team_display_name)
        OpenAPI.validate_property(ChannelMemberWithTeamDataAllOf, Symbol("team_name"), team_name)
        OpenAPI.validate_property(ChannelMemberWithTeamDataAllOf, Symbol("team_update_at"), team_update_at)
        return new(team_display_name, team_name, team_update_at, )
    end
end # type ChannelMemberWithTeamDataAllOf

const _property_types_ChannelMemberWithTeamDataAllOf = Dict{Symbol,String}(Symbol("team_display_name")=>"String", Symbol("team_name")=>"String", Symbol("team_update_at")=>"Int64", )
OpenAPI.property_type(::Type{ ChannelMemberWithTeamDataAllOf }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChannelMemberWithTeamDataAllOf[name]))}

function check_required(o::ChannelMemberWithTeamDataAllOf)
    true
end

function OpenAPI.validate_property(::Type{ ChannelMemberWithTeamDataAllOf }, name::Symbol, val)
end
