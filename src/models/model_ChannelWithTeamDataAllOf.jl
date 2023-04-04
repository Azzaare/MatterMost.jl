# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChannelWithTeamData_allOf

    ChannelWithTeamDataAllOf(;
        team_display_name=nothing,
        team_name=nothing,
        team_update_at=nothing,
        policy_id=nothing,
    )

    - team_display_name::String : The display name of the team to which this channel belongs.
    - team_name::String : The name of the team to which this channel belongs.
    - team_update_at::Int64 : The time at which the team to which this channel belongs was last updated.
    - policy_id::String : The data retention policy to which this team has been assigned. If no such policy exists, or the caller does not have the &#x60;sysconsole_read_compliance_data_retention&#x60; permission, this field will be null.
"""
Base.@kwdef mutable struct ChannelWithTeamDataAllOf <: OpenAPI.APIModel
    team_display_name::Union{Nothing, String} = nothing
    team_name::Union{Nothing, String} = nothing
    team_update_at::Union{Nothing, Int64} = nothing
    policy_id::Union{Nothing, String} = nothing

    function ChannelWithTeamDataAllOf(team_display_name, team_name, team_update_at, policy_id, )
        OpenAPI.validate_property(ChannelWithTeamDataAllOf, Symbol("team_display_name"), team_display_name)
        OpenAPI.validate_property(ChannelWithTeamDataAllOf, Symbol("team_name"), team_name)
        OpenAPI.validate_property(ChannelWithTeamDataAllOf, Symbol("team_update_at"), team_update_at)
        OpenAPI.validate_property(ChannelWithTeamDataAllOf, Symbol("policy_id"), policy_id)
        return new(team_display_name, team_name, team_update_at, policy_id, )
    end
end # type ChannelWithTeamDataAllOf

const _property_types_ChannelWithTeamDataAllOf = Dict{Symbol,String}(Symbol("team_display_name")=>"String", Symbol("team_name")=>"String", Symbol("team_update_at")=>"Int64", Symbol("policy_id")=>"String", )
OpenAPI.property_type(::Type{ ChannelWithTeamDataAllOf }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChannelWithTeamDataAllOf[name]))}

function check_required(o::ChannelWithTeamDataAllOf)
    true
end

function OpenAPI.validate_property(::Type{ ChannelWithTeamDataAllOf }, name::Symbol, val)
end