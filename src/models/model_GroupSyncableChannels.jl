# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""GroupSyncableChannels

    GroupSyncableChannels(;
        channel_id=nothing,
        channel_display_name=nothing,
        channel_type=nothing,
        team_id=nothing,
        team_display_name=nothing,
        team_type=nothing,
        group_id=nothing,
        auto_add=nothing,
        create_at=nothing,
        delete_at=nothing,
        update_at=nothing,
    )

    - channel_id::String
    - channel_display_name::String
    - channel_type::String
    - team_id::String
    - team_display_name::String
    - team_type::String
    - group_id::String
    - auto_add::Bool
    - create_at::Int64
    - delete_at::Int64
    - update_at::Int64
"""
Base.@kwdef mutable struct GroupSyncableChannels <: OpenAPI.APIModel
    channel_id::Union{Nothing, String} = nothing
    channel_display_name::Union{Nothing, String} = nothing
    channel_type::Union{Nothing, String} = nothing
    team_id::Union{Nothing, String} = nothing
    team_display_name::Union{Nothing, String} = nothing
    team_type::Union{Nothing, String} = nothing
    group_id::Union{Nothing, String} = nothing
    auto_add::Union{Nothing, Bool} = nothing
    create_at::Union{Nothing, Int64} = nothing
    delete_at::Union{Nothing, Int64} = nothing
    update_at::Union{Nothing, Int64} = nothing

    function GroupSyncableChannels(channel_id, channel_display_name, channel_type, team_id, team_display_name, team_type, group_id, auto_add, create_at, delete_at, update_at, )
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("channel_display_name"), channel_display_name)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("channel_type"), channel_type)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("team_id"), team_id)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("team_display_name"), team_display_name)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("team_type"), team_type)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("group_id"), group_id)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("auto_add"), auto_add)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("create_at"), create_at)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("delete_at"), delete_at)
        OpenAPI.validate_property(GroupSyncableChannels, Symbol("update_at"), update_at)
        return new(channel_id, channel_display_name, channel_type, team_id, team_display_name, team_type, group_id, auto_add, create_at, delete_at, update_at, )
    end
end # type GroupSyncableChannels

const _property_types_GroupSyncableChannels = Dict{Symbol,String}(Symbol("channel_id")=>"String", Symbol("channel_display_name")=>"String", Symbol("channel_type")=>"String", Symbol("team_id")=>"String", Symbol("team_display_name")=>"String", Symbol("team_type")=>"String", Symbol("group_id")=>"String", Symbol("auto_add")=>"Bool", Symbol("create_at")=>"Int64", Symbol("delete_at")=>"Int64", Symbol("update_at")=>"Int64", )
OpenAPI.property_type(::Type{ GroupSyncableChannels }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_GroupSyncableChannels[name]))}

function check_required(o::GroupSyncableChannels)
    true
end

function OpenAPI.validate_property(::Type{ GroupSyncableChannels }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "GroupSyncableChannels", :format, val, "int64")
    end
    if name === Symbol("delete_at")
        OpenAPI.validate_param(name, "GroupSyncableChannels", :format, val, "int64")
    end
    if name === Symbol("update_at")
        OpenAPI.validate_param(name, "GroupSyncableChannels", :format, val, "int64")
    end
end
