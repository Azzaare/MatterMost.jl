# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PatchGroup_request

    PatchGroupRequest(;
        name=nothing,
        display_name=nothing,
        description=nothing,
    )

    - name::String
    - display_name::String
    - description::String
"""
Base.@kwdef mutable struct PatchGroupRequest <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing

    function PatchGroupRequest(name, display_name, description, )
        OpenAPI.validate_property(PatchGroupRequest, Symbol("name"), name)
        OpenAPI.validate_property(PatchGroupRequest, Symbol("display_name"), display_name)
        OpenAPI.validate_property(PatchGroupRequest, Symbol("description"), description)
        return new(name, display_name, description, )
    end
end # type PatchGroupRequest

const _property_types_PatchGroupRequest = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("display_name")=>"String", Symbol("description")=>"String", )
OpenAPI.property_type(::Type{ PatchGroupRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PatchGroupRequest[name]))}

function check_required(o::PatchGroupRequest)
    true
end

function OpenAPI.validate_property(::Type{ PatchGroupRequest }, name::Symbol, val)
end
