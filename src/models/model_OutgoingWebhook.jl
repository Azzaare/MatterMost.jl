# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OutgoingWebhook

    OutgoingWebhook(;
        id=nothing,
        create_at=nothing,
        update_at=nothing,
        delete_at=nothing,
        creator_id=nothing,
        team_id=nothing,
        channel_id=nothing,
        description=nothing,
        display_name=nothing,
        trigger_words=nothing,
        trigger_when=nothing,
        callback_urls=nothing,
        content_type="application/x-www-form-urlencoded",
    )

    - id::String : The unique identifier for this outgoing webhook
    - create_at::Int64 : The time in milliseconds a outgoing webhook was created
    - update_at::Int64 : The time in milliseconds a outgoing webhook was last updated
    - delete_at::Int64 : The time in milliseconds a outgoing webhook was deleted
    - creator_id::String : The Id of the user who created the webhook
    - team_id::String : The ID of the team that the webhook watchs
    - channel_id::String : The ID of a public channel that the webhook watchs
    - description::String : The description for this outgoing webhook
    - display_name::String : The display name for this outgoing webhook
    - trigger_words::Vector{String} : List of words for the webhook to trigger on
    - trigger_when::Int64 : When to trigger the webhook, &#x60;0&#x60; when a trigger word is present at all and &#x60;1&#x60; if the message starts with a trigger word
    - callback_urls::Vector{String} : The URLs to POST the payloads to when the webhook is triggered
    - content_type::String : The format to POST the data in, either &#x60;application/json&#x60; or &#x60;application/x-www-form-urlencoded&#x60;
"""
Base.@kwdef mutable struct OutgoingWebhook <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    update_at::Union{Nothing, Int64} = nothing
    delete_at::Union{Nothing, Int64} = nothing
    creator_id::Union{Nothing, String} = nothing
    team_id::Union{Nothing, String} = nothing
    channel_id::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    trigger_words::Union{Nothing, Vector{String}} = nothing
    trigger_when::Union{Nothing, Int64} = nothing
    callback_urls::Union{Nothing, Vector{String}} = nothing
    content_type::Union{Nothing, String} = "application/x-www-form-urlencoded"

    function OutgoingWebhook(id, create_at, update_at, delete_at, creator_id, team_id, channel_id, description, display_name, trigger_words, trigger_when, callback_urls, content_type, )
        OpenAPI.validate_property(OutgoingWebhook, Symbol("id"), id)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("create_at"), create_at)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("update_at"), update_at)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("delete_at"), delete_at)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("creator_id"), creator_id)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("team_id"), team_id)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("description"), description)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("display_name"), display_name)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("trigger_words"), trigger_words)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("trigger_when"), trigger_when)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("callback_urls"), callback_urls)
        OpenAPI.validate_property(OutgoingWebhook, Symbol("content_type"), content_type)
        return new(id, create_at, update_at, delete_at, creator_id, team_id, channel_id, description, display_name, trigger_words, trigger_when, callback_urls, content_type, )
    end
end # type OutgoingWebhook

const _property_types_OutgoingWebhook = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("create_at")=>"Int64", Symbol("update_at")=>"Int64", Symbol("delete_at")=>"Int64", Symbol("creator_id")=>"String", Symbol("team_id")=>"String", Symbol("channel_id")=>"String", Symbol("description")=>"String", Symbol("display_name")=>"String", Symbol("trigger_words")=>"Vector{String}", Symbol("trigger_when")=>"Int64", Symbol("callback_urls")=>"Vector{String}", Symbol("content_type")=>"String", )
OpenAPI.property_type(::Type{ OutgoingWebhook }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_OutgoingWebhook[name]))}

function check_required(o::OutgoingWebhook)
    true
end

function OpenAPI.validate_property(::Type{ OutgoingWebhook }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "OutgoingWebhook", :format, val, "int64")
    end
    if name === Symbol("update_at")
        OpenAPI.validate_param(name, "OutgoingWebhook", :format, val, "int64")
    end
    if name === Symbol("delete_at")
        OpenAPI.validate_param(name, "OutgoingWebhook", :format, val, "int64")
    end
end
