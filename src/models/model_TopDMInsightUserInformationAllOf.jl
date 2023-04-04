# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""TopDMInsightUserInformation_allOf

    TopDMInsightUserInformationAllOf(;
        position=nothing,
    )

    - position::String
"""
Base.@kwdef mutable struct TopDMInsightUserInformationAllOf <: OpenAPI.APIModel
    position::Union{Nothing, String} = nothing

    function TopDMInsightUserInformationAllOf(position, )
        OpenAPI.validate_property(TopDMInsightUserInformationAllOf, Symbol("position"), position)
        return new(position, )
    end
end # type TopDMInsightUserInformationAllOf

const _property_types_TopDMInsightUserInformationAllOf = Dict{Symbol,String}(Symbol("position")=>"String", )
OpenAPI.property_type(::Type{ TopDMInsightUserInformationAllOf }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TopDMInsightUserInformationAllOf[name]))}

function check_required(o::TopDMInsightUserInformationAllOf)
    true
end

function OpenAPI.validate_property(::Type{ TopDMInsightUserInformationAllOf }, name::Symbol, val)
end
