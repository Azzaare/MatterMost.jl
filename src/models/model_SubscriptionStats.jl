# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SubscriptionStats

    SubscriptionStats(;
        remaining_seats=nothing,
        is_paid_tier=nothing,
    )

    - remaining_seats::Int64
    - is_paid_tier::String
"""
Base.@kwdef mutable struct SubscriptionStats <: OpenAPI.APIModel
    remaining_seats::Union{Nothing, Int64} = nothing
    is_paid_tier::Union{Nothing, String} = nothing

    function SubscriptionStats(remaining_seats, is_paid_tier, )
        OpenAPI.validate_property(SubscriptionStats, Symbol("remaining_seats"), remaining_seats)
        OpenAPI.validate_property(SubscriptionStats, Symbol("is_paid_tier"), is_paid_tier)
        return new(remaining_seats, is_paid_tier, )
    end
end # type SubscriptionStats

const _property_types_SubscriptionStats = Dict{Symbol,String}(Symbol("remaining_seats")=>"Int64", Symbol("is_paid_tier")=>"String", )
OpenAPI.property_type(::Type{ SubscriptionStats }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SubscriptionStats[name]))}

function check_required(o::SubscriptionStats)
    true
end

function OpenAPI.validate_property(::Type{ SubscriptionStats }, name::Symbol, val)
end