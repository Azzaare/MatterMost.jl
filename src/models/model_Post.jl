# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Post

    Post(;
        id=nothing,
        create_at=nothing,
        update_at=nothing,
        delete_at=nothing,
        edit_at=nothing,
        user_id=nothing,
        channel_id=nothing,
        root_id=nothing,
        original_id=nothing,
        message=nothing,
        type=nothing,
        props=nothing,
        hashtag=nothing,
        file_ids=nothing,
        pending_post_id=nothing,
        metadata=nothing,
    )

    - id::String
    - create_at::Int64 : The time in milliseconds a post was created
    - update_at::Int64 : The time in milliseconds a post was last updated
    - delete_at::Int64 : The time in milliseconds a post was deleted
    - edit_at::Int64
    - user_id::String
    - channel_id::String
    - root_id::String
    - original_id::String
    - message::String
    - type::String
    - props::Any
    - hashtag::String
    - file_ids::Vector{String}
    - pending_post_id::String
    - metadata::PostMetadata
"""
Base.@kwdef mutable struct Post <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    update_at::Union{Nothing, Int64} = nothing
    delete_at::Union{Nothing, Int64} = nothing
    edit_at::Union{Nothing, Int64} = nothing
    user_id::Union{Nothing, String} = nothing
    channel_id::Union{Nothing, String} = nothing
    root_id::Union{Nothing, String} = nothing
    original_id::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    props::Union{Nothing, Any} = nothing
    hashtag::Union{Nothing, String} = nothing
    file_ids::Union{Nothing, Vector{String}} = nothing
    pending_post_id::Union{Nothing, String} = nothing
    metadata = nothing # spec type: Union{ Nothing, PostMetadata }

    function Post(id, create_at, update_at, delete_at, edit_at, user_id, channel_id, root_id, original_id, message, type, props, hashtag, file_ids, pending_post_id, metadata, )
        OpenAPI.validate_property(Post, Symbol("id"), id)
        OpenAPI.validate_property(Post, Symbol("create_at"), create_at)
        OpenAPI.validate_property(Post, Symbol("update_at"), update_at)
        OpenAPI.validate_property(Post, Symbol("delete_at"), delete_at)
        OpenAPI.validate_property(Post, Symbol("edit_at"), edit_at)
        OpenAPI.validate_property(Post, Symbol("user_id"), user_id)
        OpenAPI.validate_property(Post, Symbol("channel_id"), channel_id)
        OpenAPI.validate_property(Post, Symbol("root_id"), root_id)
        OpenAPI.validate_property(Post, Symbol("original_id"), original_id)
        OpenAPI.validate_property(Post, Symbol("message"), message)
        OpenAPI.validate_property(Post, Symbol("type"), type)
        OpenAPI.validate_property(Post, Symbol("props"), props)
        OpenAPI.validate_property(Post, Symbol("hashtag"), hashtag)
        OpenAPI.validate_property(Post, Symbol("file_ids"), file_ids)
        OpenAPI.validate_property(Post, Symbol("pending_post_id"), pending_post_id)
        OpenAPI.validate_property(Post, Symbol("metadata"), metadata)
        return new(id, create_at, update_at, delete_at, edit_at, user_id, channel_id, root_id, original_id, message, type, props, hashtag, file_ids, pending_post_id, metadata, )
    end
end # type Post

const _property_types_Post = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("create_at")=>"Int64", Symbol("update_at")=>"Int64", Symbol("delete_at")=>"Int64", Symbol("edit_at")=>"Int64", Symbol("user_id")=>"String", Symbol("channel_id")=>"String", Symbol("root_id")=>"String", Symbol("original_id")=>"String", Symbol("message")=>"String", Symbol("type")=>"String", Symbol("props")=>"Any", Symbol("hashtag")=>"String", Symbol("file_ids")=>"Vector{String}", Symbol("pending_post_id")=>"String", Symbol("metadata")=>"PostMetadata", )
OpenAPI.property_type(::Type{ Post }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Post[name]))}

function check_required(o::Post)
    true
end

function OpenAPI.validate_property(::Type{ Post }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "Post", :format, val, "int64")
    end
    if name === Symbol("update_at")
        OpenAPI.validate_param(name, "Post", :format, val, "int64")
    end
    if name === Symbol("delete_at")
        OpenAPI.validate_param(name, "Post", :format, val, "int64")
    end
    if name === Symbol("edit_at")
        OpenAPI.validate_param(name, "Post", :format, val, "int64")
    end
end
