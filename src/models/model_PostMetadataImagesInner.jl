# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PostMetadata_images_inner

    PostMetadataImagesInner(;
        height=nothing,
        width=nothing,
    )

    - height::Int64
    - width::Int64
"""
Base.@kwdef mutable struct PostMetadataImagesInner <: OpenAPI.APIModel
    height::Union{Nothing, Int64} = nothing
    width::Union{Nothing, Int64} = nothing

    function PostMetadataImagesInner(height, width, )
        OpenAPI.validate_property(PostMetadataImagesInner, Symbol("height"), height)
        OpenAPI.validate_property(PostMetadataImagesInner, Symbol("width"), width)
        return new(height, width, )
    end
end # type PostMetadataImagesInner

const _property_types_PostMetadataImagesInner = Dict{Symbol,String}(Symbol("height")=>"Int64", Symbol("width")=>"Int64", )
OpenAPI.property_type(::Type{ PostMetadataImagesInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PostMetadataImagesInner[name]))}

function check_required(o::PostMetadataImagesInner)
    true
end

function OpenAPI.validate_property(::Type{ PostMetadataImagesInner }, name::Symbol, val)
end