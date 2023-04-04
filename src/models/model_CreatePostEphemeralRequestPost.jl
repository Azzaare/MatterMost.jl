# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreatePostEphemeral_request_post
Post object to create

    CreatePostEphemeralRequestPost(;
        channel_id=nothing,
        message=nothing,
    )

    - channel_id::String : The channel ID to post in
    - message::String : The message contents, can be formatted with Markdown
"""
Base.@kwdef mutable struct CreatePostEphemeralRequestPost <: OpenAPI.APIModel
    channel_id::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing

    function CreatePostEphemeralRequestPost(channel_id, message, )
        OpenAPI.validate_property(CreatePostEphemeralRequestPost, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(CreatePostEphemeralRequestPost, Symbol("message"), message)
        return new(channel_id, message, )
    end
end # type CreatePostEphemeralRequestPost

const _property_types_CreatePostEphemeralRequestPost = Dict{Symbol,String}(Symbol("channel_id")=>"String", Symbol("message")=>"String", )
OpenAPI.property_type(::Type{ CreatePostEphemeralRequestPost }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreatePostEphemeralRequestPost[name]))}

function check_required(o::CreatePostEphemeralRequestPost)
    o.channel_id === nothing && (return false)
    o.message === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreatePostEphemeralRequestPost }, name::Symbol, val)
end