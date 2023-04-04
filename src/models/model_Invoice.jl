# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Invoice

    Invoice(;
        id=nothing,
        number=nothing,
        create_at=nothing,
        total=nothing,
        tax=nothing,
        status=nothing,
        period_start=nothing,
        period_end=nothing,
        subscription_id=nothing,
        item=nothing,
    )

    - id::String
    - number::String
    - create_at::Int64
    - total::Int64
    - tax::Int64
    - status::String
    - period_start::Int64
    - period_end::Int64
    - subscription_id::String
    - item::Vector{InvoiceLineItem}
"""
Base.@kwdef mutable struct Invoice <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    number::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    total::Union{Nothing, Int64} = nothing
    tax::Union{Nothing, Int64} = nothing
    status::Union{Nothing, String} = nothing
    period_start::Union{Nothing, Int64} = nothing
    period_end::Union{Nothing, Int64} = nothing
    subscription_id::Union{Nothing, String} = nothing
    item::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{InvoiceLineItem} }

    function Invoice(id, number, create_at, total, tax, status, period_start, period_end, subscription_id, item, )
        OpenAPI.validate_property(Invoice, Symbol("id"), id)
        OpenAPI.validate_property(Invoice, Symbol("number"), number)
        OpenAPI.validate_property(Invoice, Symbol("create_at"), create_at)
        OpenAPI.validate_property(Invoice, Symbol("total"), total)
        OpenAPI.validate_property(Invoice, Symbol("tax"), tax)
        OpenAPI.validate_property(Invoice, Symbol("status"), status)
        OpenAPI.validate_property(Invoice, Symbol("period_start"), period_start)
        OpenAPI.validate_property(Invoice, Symbol("period_end"), period_end)
        OpenAPI.validate_property(Invoice, Symbol("subscription_id"), subscription_id)
        OpenAPI.validate_property(Invoice, Symbol("item"), item)
        return new(id, number, create_at, total, tax, status, period_start, period_end, subscription_id, item, )
    end
end # type Invoice

const _property_types_Invoice = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("number")=>"String", Symbol("create_at")=>"Int64", Symbol("total")=>"Int64", Symbol("tax")=>"Int64", Symbol("status")=>"String", Symbol("period_start")=>"Int64", Symbol("period_end")=>"Int64", Symbol("subscription_id")=>"String", Symbol("item")=>"Vector{InvoiceLineItem}", )
OpenAPI.property_type(::Type{ Invoice }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Invoice[name]))}

function check_required(o::Invoice)
    true
end

function OpenAPI.validate_property(::Type{ Invoice }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "Invoice", :format, val, "int64")
    end
    if name === Symbol("total")
        OpenAPI.validate_param(name, "Invoice", :format, val, "int64")
    end
    if name === Symbol("tax")
        OpenAPI.validate_param(name, "Invoice", :format, val, "int64")
    end
    if name === Symbol("period_start")
        OpenAPI.validate_param(name, "Invoice", :format, val, "int64")
    end
    if name === Symbol("period_end")
        OpenAPI.validate_param(name, "Invoice", :format, val, "int64")
    end
end