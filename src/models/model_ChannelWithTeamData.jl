# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChannelWithTeamData

    ChannelWithTeamData(;
        id=nothing,
        create_at=nothing,
        update_at=nothing,
        delete_at=nothing,
        team_id=nothing,
        type=nothing,
        display_name=nothing,
        name=nothing,
        header=nothing,
        purpose=nothing,
        last_post_at=nothing,
        total_msg_count=nothing,
        extra_update_at=nothing,
        creator_id=nothing,
        team_display_name=nothing,
        team_name=nothing,
        team_update_at=nothing,
        policy_id=nothing,
    )

    - id::String
    - create_at::Int64 : The time in milliseconds a channel was created
    - update_at::Int64 : The time in milliseconds a channel was last updated
    - delete_at::Int64 : The time in milliseconds a channel was deleted
    - team_id::String
    - type::String
    - display_name::String
    - name::String
    - header::String
    - purpose::String
    - last_post_at::Int64 : The time in milliseconds of the last post of a channel
    - total_msg_count::Int64
    - extra_update_at::Int64 : Deprecated in Mattermost 5.0 release
    - creator_id::String
    - team_display_name::String : The display name of the team to which this channel belongs.
    - team_name::String : The name of the team to which this channel belongs.
    - team_update_at::Int64 : The time at which the team to which this channel belongs was last updated.
    - policy_id::String : The data retention policy to which this team has been assigned. If no such policy exists, or the caller does not have the &#x60;sysconsole_read_compliance_data_retention&#x60; permission, this field will be null.
"""
Base.@kwdef mutable struct ChannelWithTeamData <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    update_at::Union{Nothing, Int64} = nothing
    delete_at::Union{Nothing, Int64} = nothing
    team_id::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    header::Union{Nothing, String} = nothing
    purpose::Union{Nothing, String} = nothing
    last_post_at::Union{Nothing, Int64} = nothing
    total_msg_count::Union{Nothing, Int64} = nothing
    extra_update_at::Union{Nothing, Int64} = nothing
    creator_id::Union{Nothing, String} = nothing
    team_display_name::Union{Nothing, String} = nothing
    team_name::Union{Nothing, String} = nothing
    team_update_at::Union{Nothing, Int64} = nothing
    policy_id::Union{Nothing, String} = nothing

    function ChannelWithTeamData(id, create_at, update_at, delete_at, team_id, type, display_name, name, header, purpose, last_post_at, total_msg_count, extra_update_at, creator_id, team_display_name, team_name, team_update_at, policy_id, )
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("id"), id)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("create_at"), create_at)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("update_at"), update_at)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("delete_at"), delete_at)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("team_id"), team_id)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("type"), type)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("display_name"), display_name)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("name"), name)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("header"), header)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("purpose"), purpose)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("last_post_at"), last_post_at)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("total_msg_count"), total_msg_count)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("extra_update_at"), extra_update_at)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("creator_id"), creator_id)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("team_display_name"), team_display_name)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("team_name"), team_name)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("team_update_at"), team_update_at)
        OpenAPI.validate_property(ChannelWithTeamData, Symbol("policy_id"), policy_id)
        return new(id, create_at, update_at, delete_at, team_id, type, display_name, name, header, purpose, last_post_at, total_msg_count, extra_update_at, creator_id, team_display_name, team_name, team_update_at, policy_id, )
    end
end # type ChannelWithTeamData

const _property_types_ChannelWithTeamData = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("create_at")=>"Int64", Symbol("update_at")=>"Int64", Symbol("delete_at")=>"Int64", Symbol("team_id")=>"String", Symbol("type")=>"String", Symbol("display_name")=>"String", Symbol("name")=>"String", Symbol("header")=>"String", Symbol("purpose")=>"String", Symbol("last_post_at")=>"Int64", Symbol("total_msg_count")=>"Int64", Symbol("extra_update_at")=>"Int64", Symbol("creator_id")=>"String", Symbol("team_display_name")=>"String", Symbol("team_name")=>"String", Symbol("team_update_at")=>"Int64", Symbol("policy_id")=>"String", )
OpenAPI.property_type(::Type{ ChannelWithTeamData }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChannelWithTeamData[name]))}

function check_required(o::ChannelWithTeamData)
    true
end

function OpenAPI.validate_property(::Type{ ChannelWithTeamData }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "ChannelWithTeamData", :format, val, "int64")
    end
    if name === Symbol("update_at")
        OpenAPI.validate_param(name, "ChannelWithTeamData", :format, val, "int64")
    end
    if name === Symbol("delete_at")
        OpenAPI.validate_param(name, "ChannelWithTeamData", :format, val, "int64")
    end
    if name === Symbol("extra_update_at")
        OpenAPI.validate_param(name, "ChannelWithTeamData", :format, val, "int64")
    end
end
