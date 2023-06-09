# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""TopDMInsightUserInformation

    TopDMInsightUserInformation(;
        id=nothing,
        first_name=nothing,
        last_name=nothing,
        nickname=nothing,
        username=nothing,
        last_picture_update=nothing,
        create_at=nothing,
        position=nothing,
    )

    - id::String
    - first_name::String
    - last_name::String
    - nickname::String
    - username::String
    - last_picture_update::String
    - create_at::Int64
    - position::String
"""
Base.@kwdef mutable struct TopDMInsightUserInformation <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    first_name::Union{Nothing, String} = nothing
    last_name::Union{Nothing, String} = nothing
    nickname::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    last_picture_update::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    position::Union{Nothing, String} = nothing

    function TopDMInsightUserInformation(id, first_name, last_name, nickname, username, last_picture_update, create_at, position, )
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("id"), id)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("first_name"), first_name)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("last_name"), last_name)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("nickname"), nickname)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("username"), username)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("last_picture_update"), last_picture_update)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("create_at"), create_at)
        OpenAPI.validate_property(TopDMInsightUserInformation, Symbol("position"), position)
        return new(id, first_name, last_name, nickname, username, last_picture_update, create_at, position, )
    end
end # type TopDMInsightUserInformation

const _property_types_TopDMInsightUserInformation = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("first_name")=>"String", Symbol("last_name")=>"String", Symbol("nickname")=>"String", Symbol("username")=>"String", Symbol("last_picture_update")=>"String", Symbol("create_at")=>"Int64", Symbol("position")=>"String", )
OpenAPI.property_type(::Type{ TopDMInsightUserInformation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TopDMInsightUserInformation[name]))}

function check_required(o::TopDMInsightUserInformation)
    true
end

function OpenAPI.validate_property(::Type{ TopDMInsightUserInformation }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "TopDMInsightUserInformation", :format, val, "int64")
    end
end
