# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Subscription

    Subscription(;
        id=nothing,
        customer_id=nothing,
        product_id=nothing,
        add_ons=nothing,
        start_at=nothing,
        end_at=nothing,
        create_at=nothing,
        seats=nothing,
        dns=nothing,
    )

    - id::String
    - customer_id::String
    - product_id::String
    - add_ons::Vector{String}
    - start_at::Int64
    - end_at::Int64
    - create_at::Int64
    - seats::Int64
    - dns::String
"""
Base.@kwdef mutable struct Subscription <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    customer_id::Union{Nothing, String} = nothing
    product_id::Union{Nothing, String} = nothing
    add_ons::Union{Nothing, Vector{String}} = nothing
    start_at::Union{Nothing, Int64} = nothing
    end_at::Union{Nothing, Int64} = nothing
    create_at::Union{Nothing, Int64} = nothing
    seats::Union{Nothing, Int64} = nothing
    dns::Union{Nothing, String} = nothing

    function Subscription(id, customer_id, product_id, add_ons, start_at, end_at, create_at, seats, dns, )
        OpenAPI.validate_property(Subscription, Symbol("id"), id)
        OpenAPI.validate_property(Subscription, Symbol("customer_id"), customer_id)
        OpenAPI.validate_property(Subscription, Symbol("product_id"), product_id)
        OpenAPI.validate_property(Subscription, Symbol("add_ons"), add_ons)
        OpenAPI.validate_property(Subscription, Symbol("start_at"), start_at)
        OpenAPI.validate_property(Subscription, Symbol("end_at"), end_at)
        OpenAPI.validate_property(Subscription, Symbol("create_at"), create_at)
        OpenAPI.validate_property(Subscription, Symbol("seats"), seats)
        OpenAPI.validate_property(Subscription, Symbol("dns"), dns)
        return new(id, customer_id, product_id, add_ons, start_at, end_at, create_at, seats, dns, )
    end
end # type Subscription

const _property_types_Subscription = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("customer_id")=>"String", Symbol("product_id")=>"String", Symbol("add_ons")=>"Vector{String}", Symbol("start_at")=>"Int64", Symbol("end_at")=>"Int64", Symbol("create_at")=>"Int64", Symbol("seats")=>"Int64", Symbol("dns")=>"String", )
OpenAPI.property_type(::Type{ Subscription }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Subscription[name]))}

function check_required(o::Subscription)
    true
end

function OpenAPI.validate_property(::Type{ Subscription }, name::Symbol, val)
    if name === Symbol("start_at")
        OpenAPI.validate_param(name, "Subscription", :format, val, "int64")
    end
    if name === Symbol("end_at")
        OpenAPI.validate_param(name, "Subscription", :format, val, "int64")
    end
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "Subscription", :format, val, "int64")
    end
end
