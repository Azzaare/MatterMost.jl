# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""InviteGuestsToTeam_request

    InviteGuestsToTeamRequest(;
        emails=nothing,
        channels=nothing,
        message=nothing,
    )

    - emails::Vector{String} : List of emails
    - channels::Vector{String} : List of channel ids
    - message::String : Message to include in the invite
"""
Base.@kwdef mutable struct InviteGuestsToTeamRequest <: OpenAPI.APIModel
    emails::Union{Nothing, Vector{String}} = nothing
    channels::Union{Nothing, Vector{String}} = nothing
    message::Union{Nothing, String} = nothing

    function InviteGuestsToTeamRequest(emails, channels, message, )
        OpenAPI.validate_property(InviteGuestsToTeamRequest, Symbol("emails"), emails)
        OpenAPI.validate_property(InviteGuestsToTeamRequest, Symbol("channels"), channels)
        OpenAPI.validate_property(InviteGuestsToTeamRequest, Symbol("message"), message)
        return new(emails, channels, message, )
    end
end # type InviteGuestsToTeamRequest

const _property_types_InviteGuestsToTeamRequest = Dict{Symbol,String}(Symbol("emails")=>"Vector{String}", Symbol("channels")=>"Vector{String}", Symbol("message")=>"String", )
OpenAPI.property_type(::Type{ InviteGuestsToTeamRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_InviteGuestsToTeamRequest[name]))}

function check_required(o::InviteGuestsToTeamRequest)
    o.emails === nothing && (return false)
    o.channels === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ InviteGuestsToTeamRequest }, name::Symbol, val)
end