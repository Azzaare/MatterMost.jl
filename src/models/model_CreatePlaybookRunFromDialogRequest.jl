# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""createPlaybookRunFromDialog_request

    CreatePlaybookRunFromDialogRequest(;
        type=nothing,
        url=nothing,
        callback_id=nothing,
        state=nothing,
        user_id=nothing,
        channel_id=nothing,
        team_id=nothing,
        submission=nothing,
        cancelled=nothing,
    )

    - type::String
    - url::String
    - callback_id::String : Callback ID provided by the integration.
    - state::String : Stringified JSON with the post_id and the client_id.
    - user_id::String : ID of the user who submitted the dialog.
    - channel_id::String : ID of the channel the user was in when submitting the dialog.
    - team_id::String : ID of the team the user was on when submitting the dialog.
    - submission::CreatePlaybookRunFromDialogRequestSubmission
    - cancelled::Bool : If the dialog was cancelled.
"""
Base.@kwdef mutable struct CreatePlaybookRunFromDialogRequest <: OpenAPI.APIModel
    type::Union{Nothing, String} = nothing
    url::Union{Nothing, String} = nothing
    callback_id::Union{Nothing, String} = nothing
    state::Union{Nothing, String} = nothing
    user_id::Union{Nothing, String} = nothing
    channel_id::Union{Nothing, String} = nothing
    team_id::Union{Nothing, String} = nothing
    submission = nothing # spec type: Union{ Nothing, CreatePlaybookRunFromDialogRequestSubmission }
    cancelled::Union{Nothing, Bool} = nothing

    function CreatePlaybookRunFromDialogRequest(type, url, callback_id, state, user_id, channel_id, team_id, submission, cancelled, )
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("type"), type)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("url"), url)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("callback_id"), callback_id)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("state"), state)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("user_id"), user_id)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("team_id"), team_id)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("submission"), submission)
        OpenAPI.validate_property(CreatePlaybookRunFromDialogRequest, Symbol("cancelled"), cancelled)
        return new(type, url, callback_id, state, user_id, channel_id, team_id, submission, cancelled, )
    end
end # type CreatePlaybookRunFromDialogRequest

const _property_types_CreatePlaybookRunFromDialogRequest = Dict{Symbol,String}(Symbol("type")=>"String", Symbol("url")=>"String", Symbol("callback_id")=>"String", Symbol("state")=>"String", Symbol("user_id")=>"String", Symbol("channel_id")=>"String", Symbol("team_id")=>"String", Symbol("submission")=>"CreatePlaybookRunFromDialogRequestSubmission", Symbol("cancelled")=>"Bool", )
OpenAPI.property_type(::Type{ CreatePlaybookRunFromDialogRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreatePlaybookRunFromDialogRequest[name]))}

function check_required(o::CreatePlaybookRunFromDialogRequest)
    true
end

function OpenAPI.validate_property(::Type{ CreatePlaybookRunFromDialogRequest }, name::Symbol, val)
end
