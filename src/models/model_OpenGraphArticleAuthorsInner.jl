# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OpenGraph_article_authors_inner

    OpenGraphArticleAuthorsInner(;
        first_name=nothing,
        last_name=nothing,
        username=nothing,
        gender=nothing,
    )

    - first_name::String
    - last_name::String
    - username::String
    - gender::String
"""
Base.@kwdef mutable struct OpenGraphArticleAuthorsInner <: OpenAPI.APIModel
    first_name::Union{Nothing, String} = nothing
    last_name::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    gender::Union{Nothing, String} = nothing

    function OpenGraphArticleAuthorsInner(first_name, last_name, username, gender, )
        OpenAPI.validate_property(OpenGraphArticleAuthorsInner, Symbol("first_name"), first_name)
        OpenAPI.validate_property(OpenGraphArticleAuthorsInner, Symbol("last_name"), last_name)
        OpenAPI.validate_property(OpenGraphArticleAuthorsInner, Symbol("username"), username)
        OpenAPI.validate_property(OpenGraphArticleAuthorsInner, Symbol("gender"), gender)
        return new(first_name, last_name, username, gender, )
    end
end # type OpenGraphArticleAuthorsInner

const _property_types_OpenGraphArticleAuthorsInner = Dict{Symbol,String}(Symbol("first_name")=>"String", Symbol("last_name")=>"String", Symbol("username")=>"String", Symbol("gender")=>"String", )
OpenAPI.property_type(::Type{ OpenGraphArticleAuthorsInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_OpenGraphArticleAuthorsInner[name]))}

function check_required(o::OpenGraphArticleAuthorsInner)
    true
end

function OpenAPI.validate_property(::Type{ OpenGraphArticleAuthorsInner }, name::Symbol, val)
end