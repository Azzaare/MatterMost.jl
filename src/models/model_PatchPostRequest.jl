# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PatchPost_request

    PatchPostRequest(;
        is_pinned=nothing,
        message=nothing,
        file_ids=nothing,
        has_reactions=nothing,
        props=nothing,
    )

    - is_pinned::Bool : Set to &#x60;true&#x60; to pin the post to the channel it is in
    - message::String : The message text of the post
    - file_ids::Vector{String} : The list of files attached to this post
    - has_reactions::Bool : Set to &#x60;true&#x60; if the post has reactions to it
    - props::String : A general JSON property bag to attach to the post
"""
Base.@kwdef mutable struct PatchPostRequest <: OpenAPI.APIModel
    is_pinned::Union{Nothing, Bool} = nothing
    message::Union{Nothing, String} = nothing
    file_ids::Union{Nothing, Vector{String}} = nothing
    has_reactions::Union{Nothing, Bool} = nothing
    props::Union{Nothing, String} = nothing

    function PatchPostRequest(is_pinned, message, file_ids, has_reactions, props, )
        OpenAPI.validate_property(PatchPostRequest, Symbol("is_pinned"), is_pinned)
        OpenAPI.validate_property(PatchPostRequest, Symbol("message"), message)
        OpenAPI.validate_property(PatchPostRequest, Symbol("file_ids"), file_ids)
        OpenAPI.validate_property(PatchPostRequest, Symbol("has_reactions"), has_reactions)
        OpenAPI.validate_property(PatchPostRequest, Symbol("props"), props)
        return new(is_pinned, message, file_ids, has_reactions, props, )
    end
end # type PatchPostRequest

const _property_types_PatchPostRequest = Dict{Symbol,String}(Symbol("is_pinned")=>"Bool", Symbol("message")=>"String", Symbol("file_ids")=>"Vector{String}", Symbol("has_reactions")=>"Bool", Symbol("props")=>"String", )
OpenAPI.property_type(::Type{ PatchPostRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PatchPostRequest[name]))}

function check_required(o::PatchPostRequest)
    true
end

function OpenAPI.validate_property(::Type{ PatchPostRequest }, name::Symbol, val)
end
