# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChannelMember

    ChannelMember(;
        channel_id=nothing,
        user_id=nothing,
        roles=nothing,
        last_viewed_at=nothing,
        msg_count=nothing,
        mention_count=nothing,
        notify_props=nothing,
        last_update_at=nothing,
    )

    - channel_id::String
    - user_id::String
    - roles::String
    - last_viewed_at::Int64 : The time in milliseconds the channel was last viewed by the user
    - msg_count::Int64
    - mention_count::Int64
    - notify_props::ChannelNotifyProps
    - last_update_at::Int64 : The time in milliseconds the channel member was last updated
"""
Base.@kwdef mutable struct ChannelMember <: OpenAPI.APIModel
    channel_id::Union{Nothing, String} = nothing
    user_id::Union{Nothing, String} = nothing
    roles::Union{Nothing, String} = nothing
    last_viewed_at::Union{Nothing, Int64} = nothing
    msg_count::Union{Nothing, Int64} = nothing
    mention_count::Union{Nothing, Int64} = nothing
    notify_props = nothing # spec type: Union{ Nothing, ChannelNotifyProps }
    last_update_at::Union{Nothing, Int64} = nothing

    function ChannelMember(channel_id, user_id, roles, last_viewed_at, msg_count, mention_count, notify_props, last_update_at, )
        OpenAPI.validate_property(ChannelMember, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(ChannelMember, Symbol("user_id"), user_id)
        OpenAPI.validate_property(ChannelMember, Symbol("roles"), roles)
        OpenAPI.validate_property(ChannelMember, Symbol("last_viewed_at"), last_viewed_at)
        OpenAPI.validate_property(ChannelMember, Symbol("msg_count"), msg_count)
        OpenAPI.validate_property(ChannelMember, Symbol("mention_count"), mention_count)
        OpenAPI.validate_property(ChannelMember, Symbol("notify_props"), notify_props)
        OpenAPI.validate_property(ChannelMember, Symbol("last_update_at"), last_update_at)
        return new(channel_id, user_id, roles, last_viewed_at, msg_count, mention_count, notify_props, last_update_at, )
    end
end # type ChannelMember

const _property_types_ChannelMember = Dict{Symbol,String}(Symbol("channel_id")=>"String", Symbol("user_id")=>"String", Symbol("roles")=>"String", Symbol("last_viewed_at")=>"Int64", Symbol("msg_count")=>"Int64", Symbol("mention_count")=>"Int64", Symbol("notify_props")=>"ChannelNotifyProps", Symbol("last_update_at")=>"Int64", )
OpenAPI.property_type(::Type{ ChannelMember }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChannelMember[name]))}

function check_required(o::ChannelMember)
    true
end

function OpenAPI.validate_property(::Type{ ChannelMember }, name::Symbol, val)
    if name === Symbol("last_viewed_at")
        OpenAPI.validate_param(name, "ChannelMember", :format, val, "int64")
    end
    if name === Symbol("last_update_at")
        OpenAPI.validate_param(name, "ChannelMember", :format, val, "int64")
    end
end
