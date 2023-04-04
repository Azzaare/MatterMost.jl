# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""TopReactionList

    TopReactionList(;
        has_next=nothing,
        items=nothing,
    )

    - has_next::Bool : Indicates if there is another page of reactions that can be fetched.
    - items::Vector{TopReaction} : List of reactions.
"""
Base.@kwdef mutable struct TopReactionList <: OpenAPI.APIModel
    has_next::Union{Nothing, Bool} = nothing
    items::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{TopReaction} }

    function TopReactionList(has_next, items, )
        OpenAPI.validate_property(TopReactionList, Symbol("has_next"), has_next)
        OpenAPI.validate_property(TopReactionList, Symbol("items"), items)
        return new(has_next, items, )
    end
end # type TopReactionList

const _property_types_TopReactionList = Dict{Symbol,String}(Symbol("has_next")=>"Bool", Symbol("items")=>"Vector{TopReaction}", )
OpenAPI.property_type(::Type{ TopReactionList }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TopReactionList[name]))}

function check_required(o::TopReactionList)
    true
end

function OpenAPI.validate_property(::Type{ TopReactionList }, name::Symbol, val)
end
