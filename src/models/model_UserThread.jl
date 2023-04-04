# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UserThread
a thread that user is following

    UserThread(;
        id=nothing,
        reply_count=nothing,
        last_reply_at=nothing,
        last_viewed_at=nothing,
        participants=nothing,
        post=nothing,
    )

    - id::String : ID of the post that is this thread&#39;s root
    - reply_count::Int64 : number of replies in this thread
    - last_reply_at::Int64 : timestamp of the last post to this thread
    - last_viewed_at::Int64 : timestamp of the last time the user viewed this thread
    - participants::Vector{Post} : list of users participating in this thread. only includes IDs unless &#39;extended&#39; was set to &#39;true&#39;
    - post::Post
"""
Base.@kwdef mutable struct UserThread <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    reply_count::Union{Nothing, Int64} = nothing
    last_reply_at::Union{Nothing, Int64} = nothing
    last_viewed_at::Union{Nothing, Int64} = nothing
    participants::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Post} }
    post = nothing # spec type: Union{ Nothing, Post }

    function UserThread(id, reply_count, last_reply_at, last_viewed_at, participants, post, )
        OpenAPI.validate_property(UserThread, Symbol("id"), id)
        OpenAPI.validate_property(UserThread, Symbol("reply_count"), reply_count)
        OpenAPI.validate_property(UserThread, Symbol("last_reply_at"), last_reply_at)
        OpenAPI.validate_property(UserThread, Symbol("last_viewed_at"), last_viewed_at)
        OpenAPI.validate_property(UserThread, Symbol("participants"), participants)
        OpenAPI.validate_property(UserThread, Symbol("post"), post)
        return new(id, reply_count, last_reply_at, last_viewed_at, participants, post, )
    end
end # type UserThread

const _property_types_UserThread = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("reply_count")=>"Int64", Symbol("last_reply_at")=>"Int64", Symbol("last_viewed_at")=>"Int64", Symbol("participants")=>"Vector{Post}", Symbol("post")=>"Post", )
OpenAPI.property_type(::Type{ UserThread }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UserThread[name]))}

function check_required(o::UserThread)
    true
end

function OpenAPI.validate_property(::Type{ UserThread }, name::Symbol, val)
    if name === Symbol("last_reply_at")
        OpenAPI.validate_param(name, "UserThread", :format, val, "int64")
    end
    if name === Symbol("last_viewed_at")
        OpenAPI.validate_param(name, "UserThread", :format, val, "int64")
    end
end