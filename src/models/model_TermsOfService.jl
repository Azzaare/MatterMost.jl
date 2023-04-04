# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""TermsOfService

    TermsOfService(;
        id=nothing,
        create_at=nothing,
        user_id=nothing,
        text=nothing,
    )

    - id::String : The unique identifier of the terms of service.
    - create_at::Int64 : The time at which the terms of service was created.
    - user_id::String : The unique identifier of the user who created these terms of service.
    - text::String : The text of terms of service. Supports Markdown.
"""
Base.@kwdef mutable struct TermsOfService <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    user_id::Union{Nothing, String} = nothing
    text::Union{Nothing, String} = nothing

    function TermsOfService(id, create_at, user_id, text, )
        OpenAPI.validate_property(TermsOfService, Symbol("id"), id)
        OpenAPI.validate_property(TermsOfService, Symbol("create_at"), create_at)
        OpenAPI.validate_property(TermsOfService, Symbol("user_id"), user_id)
        OpenAPI.validate_property(TermsOfService, Symbol("text"), text)
        return new(id, create_at, user_id, text, )
    end
end # type TermsOfService

const _property_types_TermsOfService = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("create_at")=>"Int64", Symbol("user_id")=>"String", Symbol("text")=>"String", )
OpenAPI.property_type(::Type{ TermsOfService }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TermsOfService[name]))}

function check_required(o::TermsOfService)
    true
end

function OpenAPI.validate_property(::Type{ TermsOfService }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "TermsOfService", :format, val, "int64")
    end
end