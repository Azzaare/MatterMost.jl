# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UpdateIncomingWebhook_request

    UpdateIncomingWebhookRequest(;
        id=nothing,
        channel_id=nothing,
        display_name=nothing,
        description=nothing,
        username=nothing,
        icon_url=nothing,
    )

    - id::String : Incoming webhook GUID
    - channel_id::String : The ID of a public channel or private group that receives the webhook payloads.
    - display_name::String : The display name for this incoming webhook
    - description::String : The description for this incoming webhook
    - username::String : The username this incoming webhook will post as.
    - icon_url::String : The profile picture this incoming webhook will use when posting.
"""
Base.@kwdef mutable struct UpdateIncomingWebhookRequest <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    channel_id::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    icon_url::Union{Nothing, String} = nothing

    function UpdateIncomingWebhookRequest(id, channel_id, display_name, description, username, icon_url, )
        OpenAPI.validate_property(UpdateIncomingWebhookRequest, Symbol("id"), id)
        OpenAPI.validate_property(UpdateIncomingWebhookRequest, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(UpdateIncomingWebhookRequest, Symbol("display_name"), display_name)
        OpenAPI.validate_property(UpdateIncomingWebhookRequest, Symbol("description"), description)
        OpenAPI.validate_property(UpdateIncomingWebhookRequest, Symbol("username"), username)
        OpenAPI.validate_property(UpdateIncomingWebhookRequest, Symbol("icon_url"), icon_url)
        return new(id, channel_id, display_name, description, username, icon_url, )
    end
end # type UpdateIncomingWebhookRequest

const _property_types_UpdateIncomingWebhookRequest = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("channel_id")=>"String", Symbol("display_name")=>"String", Symbol("description")=>"String", Symbol("username")=>"String", Symbol("icon_url")=>"String", )
OpenAPI.property_type(::Type{ UpdateIncomingWebhookRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpdateIncomingWebhookRequest[name]))}

function check_required(o::UpdateIncomingWebhookRequest)
    o.id === nothing && (return false)
    o.channel_id === nothing && (return false)
    o.display_name === nothing && (return false)
    o.description === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ UpdateIncomingWebhookRequest }, name::Symbol, val)
end
