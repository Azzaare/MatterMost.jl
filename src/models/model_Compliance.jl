# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Compliance

    Compliance(;
        id=nothing,
        create_at=nothing,
        user_id=nothing,
        status=nothing,
        count=nothing,
        desc=nothing,
        type=nothing,
        start_at=nothing,
        end_at=nothing,
        keywords=nothing,
        emails=nothing,
    )

    - id::String
    - create_at::Int64
    - user_id::String
    - status::String
    - count::Int64
    - desc::String
    - type::String
    - start_at::Int64
    - end_at::Int64
    - keywords::String
    - emails::String
"""
Base.@kwdef mutable struct Compliance <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    user_id::Union{Nothing, String} = nothing
    status::Union{Nothing, String} = nothing
    count::Union{Nothing, Int64} = nothing
    desc::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    start_at::Union{Nothing, Int64} = nothing
    end_at::Union{Nothing, Int64} = nothing
    keywords::Union{Nothing, String} = nothing
    emails::Union{Nothing, String} = nothing

    function Compliance(id, create_at, user_id, status, count, desc, type, start_at, end_at, keywords, emails, )
        OpenAPI.validate_property(Compliance, Symbol("id"), id)
        OpenAPI.validate_property(Compliance, Symbol("create_at"), create_at)
        OpenAPI.validate_property(Compliance, Symbol("user_id"), user_id)
        OpenAPI.validate_property(Compliance, Symbol("status"), status)
        OpenAPI.validate_property(Compliance, Symbol("count"), count)
        OpenAPI.validate_property(Compliance, Symbol("desc"), desc)
        OpenAPI.validate_property(Compliance, Symbol("type"), type)
        OpenAPI.validate_property(Compliance, Symbol("start_at"), start_at)
        OpenAPI.validate_property(Compliance, Symbol("end_at"), end_at)
        OpenAPI.validate_property(Compliance, Symbol("keywords"), keywords)
        OpenAPI.validate_property(Compliance, Symbol("emails"), emails)
        return new(id, create_at, user_id, status, count, desc, type, start_at, end_at, keywords, emails, )
    end
end # type Compliance

const _property_types_Compliance = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("create_at")=>"Int64", Symbol("user_id")=>"String", Symbol("status")=>"String", Symbol("count")=>"Int64", Symbol("desc")=>"String", Symbol("type")=>"String", Symbol("start_at")=>"Int64", Symbol("end_at")=>"Int64", Symbol("keywords")=>"String", Symbol("emails")=>"String", )
OpenAPI.property_type(::Type{ Compliance }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Compliance[name]))}

function check_required(o::Compliance)
    true
end

function OpenAPI.validate_property(::Type{ Compliance }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "Compliance", :format, val, "int64")
    end
    if name === Symbol("start_at")
        OpenAPI.validate_param(name, "Compliance", :format, val, "int64")
    end
    if name === Symbol("end_at")
        OpenAPI.validate_param(name, "Compliance", :format, val, "int64")
    end
end