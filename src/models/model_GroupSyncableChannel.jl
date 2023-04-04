# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""GroupSyncableChannel

    GroupSyncableChannel(;
        channel_id=nothing,
        group_id=nothing,
        auto_add=nothing,
        create_at=nothing,
        delete_at=nothing,
        update_at=nothing,
    )

    - channel_id::String
    - group_id::String
    - auto_add::Bool
    - create_at::Int64
    - delete_at::Int64
    - update_at::Int64
"""
Base.@kwdef mutable struct GroupSyncableChannel <: OpenAPI.APIModel
    channel_id::Union{Nothing, String} = nothing
    group_id::Union{Nothing, String} = nothing
    auto_add::Union{Nothing, Bool} = nothing
    create_at::Union{Nothing, Int64} = nothing
    delete_at::Union{Nothing, Int64} = nothing
    update_at::Union{Nothing, Int64} = nothing

    function GroupSyncableChannel(channel_id, group_id, auto_add, create_at, delete_at, update_at, )
        OpenAPI.validate_property(GroupSyncableChannel, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(GroupSyncableChannel, Symbol("group_id"), group_id)
        OpenAPI.validate_property(GroupSyncableChannel, Symbol("auto_add"), auto_add)
        OpenAPI.validate_property(GroupSyncableChannel, Symbol("create_at"), create_at)
        OpenAPI.validate_property(GroupSyncableChannel, Symbol("delete_at"), delete_at)
        OpenAPI.validate_property(GroupSyncableChannel, Symbol("update_at"), update_at)
        return new(channel_id, group_id, auto_add, create_at, delete_at, update_at, )
    end
end # type GroupSyncableChannel

const _property_types_GroupSyncableChannel = Dict{Symbol,String}(Symbol("channel_id")=>"String", Symbol("group_id")=>"String", Symbol("auto_add")=>"Bool", Symbol("create_at")=>"Int64", Symbol("delete_at")=>"Int64", Symbol("update_at")=>"Int64", )
OpenAPI.property_type(::Type{ GroupSyncableChannel }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_GroupSyncableChannel[name]))}

function check_required(o::GroupSyncableChannel)
    true
end

function OpenAPI.validate_property(::Type{ GroupSyncableChannel }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "GroupSyncableChannel", :format, val, "int64")
    end
    if name === Symbol("delete_at")
        OpenAPI.validate_param(name, "GroupSyncableChannel", :format, val, "int64")
    end
    if name === Symbol("update_at")
        OpenAPI.validate_param(name, "GroupSyncableChannel", :format, val, "int64")
    end
end