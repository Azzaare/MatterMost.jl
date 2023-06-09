# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Preference

    Preference(;
        user_id=nothing,
        category=nothing,
        name=nothing,
        value=nothing,
    )

    - user_id::String : The ID of the user that owns this preference
    - category::String
    - name::String
    - value::String
"""
Base.@kwdef mutable struct Preference <: OpenAPI.APIModel
    user_id::Union{Nothing, String} = nothing
    category::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    value::Union{Nothing, String} = nothing

    function Preference(user_id, category, name, value, )
        OpenAPI.validate_property(Preference, Symbol("user_id"), user_id)
        OpenAPI.validate_property(Preference, Symbol("category"), category)
        OpenAPI.validate_property(Preference, Symbol("name"), name)
        OpenAPI.validate_property(Preference, Symbol("value"), value)
        return new(user_id, category, name, value, )
    end
end # type Preference

const _property_types_Preference = Dict{Symbol,String}(Symbol("user_id")=>"String", Symbol("category")=>"String", Symbol("name")=>"String", Symbol("value")=>"String", )
OpenAPI.property_type(::Type{ Preference }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Preference[name]))}

function check_required(o::Preference)
    true
end

function OpenAPI.validate_property(::Type{ Preference }, name::Symbol, val)
end
