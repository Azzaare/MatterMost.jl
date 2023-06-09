# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PushNotification

    PushNotification(;
        ack_id=nothing,
        platform=nothing,
        server_id=nothing,
        device_id=nothing,
        post_id=nothing,
        category=nothing,
        sound=nothing,
        message=nothing,
        badge=nothing,
        cont_ava=nothing,
        team_id=nothing,
        channel_id=nothing,
        root_id=nothing,
        channel_name=nothing,
        type=nothing,
        sender_id=nothing,
        sender_name=nothing,
        override_username=nothing,
        override_icon_url=nothing,
        from_webhook=nothing,
        version=nothing,
        is_id_loaded=nothing,
    )

    - ack_id::String
    - platform::String
    - server_id::String
    - device_id::String
    - post_id::String
    - category::String
    - sound::String
    - message::String
    - badge::Float64
    - cont_ava::Float64
    - team_id::String
    - channel_id::String
    - root_id::String
    - channel_name::String
    - type::String
    - sender_id::String
    - sender_name::String
    - override_username::String
    - override_icon_url::String
    - from_webhook::String
    - version::String
    - is_id_loaded::Bool
"""
Base.@kwdef mutable struct PushNotification <: OpenAPI.APIModel
    ack_id::Union{Nothing, String} = nothing
    platform::Union{Nothing, String} = nothing
    server_id::Union{Nothing, String} = nothing
    device_id::Union{Nothing, String} = nothing
    post_id::Union{Nothing, String} = nothing
    category::Union{Nothing, String} = nothing
    sound::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing
    badge::Union{Nothing, Float64} = nothing
    cont_ava::Union{Nothing, Float64} = nothing
    team_id::Union{Nothing, String} = nothing
    channel_id::Union{Nothing, String} = nothing
    root_id::Union{Nothing, String} = nothing
    channel_name::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    sender_id::Union{Nothing, String} = nothing
    sender_name::Union{Nothing, String} = nothing
    override_username::Union{Nothing, String} = nothing
    override_icon_url::Union{Nothing, String} = nothing
    from_webhook::Union{Nothing, String} = nothing
    version::Union{Nothing, String} = nothing
    is_id_loaded::Union{Nothing, Bool} = nothing

    function PushNotification(ack_id, platform, server_id, device_id, post_id, category, sound, message, badge, cont_ava, team_id, channel_id, root_id, channel_name, type, sender_id, sender_name, override_username, override_icon_url, from_webhook, version, is_id_loaded, )
        OpenAPI.validate_property(PushNotification, Symbol("ack_id"), ack_id)
        OpenAPI.validate_property(PushNotification, Symbol("platform"), platform)
        OpenAPI.validate_property(PushNotification, Symbol("server_id"), server_id)
        OpenAPI.validate_property(PushNotification, Symbol("device_id"), device_id)
        OpenAPI.validate_property(PushNotification, Symbol("post_id"), post_id)
        OpenAPI.validate_property(PushNotification, Symbol("category"), category)
        OpenAPI.validate_property(PushNotification, Symbol("sound"), sound)
        OpenAPI.validate_property(PushNotification, Symbol("message"), message)
        OpenAPI.validate_property(PushNotification, Symbol("badge"), badge)
        OpenAPI.validate_property(PushNotification, Symbol("cont_ava"), cont_ava)
        OpenAPI.validate_property(PushNotification, Symbol("team_id"), team_id)
        OpenAPI.validate_property(PushNotification, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(PushNotification, Symbol("root_id"), root_id)
        OpenAPI.validate_property(PushNotification, Symbol("channel_name"), channel_name)
        OpenAPI.validate_property(PushNotification, Symbol("type"), type)
        OpenAPI.validate_property(PushNotification, Symbol("sender_id"), sender_id)
        OpenAPI.validate_property(PushNotification, Symbol("sender_name"), sender_name)
        OpenAPI.validate_property(PushNotification, Symbol("override_username"), override_username)
        OpenAPI.validate_property(PushNotification, Symbol("override_icon_url"), override_icon_url)
        OpenAPI.validate_property(PushNotification, Symbol("from_webhook"), from_webhook)
        OpenAPI.validate_property(PushNotification, Symbol("version"), version)
        OpenAPI.validate_property(PushNotification, Symbol("is_id_loaded"), is_id_loaded)
        return new(ack_id, platform, server_id, device_id, post_id, category, sound, message, badge, cont_ava, team_id, channel_id, root_id, channel_name, type, sender_id, sender_name, override_username, override_icon_url, from_webhook, version, is_id_loaded, )
    end
end # type PushNotification

const _property_types_PushNotification = Dict{Symbol,String}(Symbol("ack_id")=>"String", Symbol("platform")=>"String", Symbol("server_id")=>"String", Symbol("device_id")=>"String", Symbol("post_id")=>"String", Symbol("category")=>"String", Symbol("sound")=>"String", Symbol("message")=>"String", Symbol("badge")=>"Float64", Symbol("cont_ava")=>"Float64", Symbol("team_id")=>"String", Symbol("channel_id")=>"String", Symbol("root_id")=>"String", Symbol("channel_name")=>"String", Symbol("type")=>"String", Symbol("sender_id")=>"String", Symbol("sender_name")=>"String", Symbol("override_username")=>"String", Symbol("override_icon_url")=>"String", Symbol("from_webhook")=>"String", Symbol("version")=>"String", Symbol("is_id_loaded")=>"Bool", )
OpenAPI.property_type(::Type{ PushNotification }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PushNotification[name]))}

function check_required(o::PushNotification)
    true
end

function OpenAPI.validate_property(::Type{ PushNotification }, name::Symbol, val)
end
