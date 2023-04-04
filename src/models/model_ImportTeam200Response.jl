# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ImportTeam_200_response

    ImportTeam200Response(;
        results=nothing,
    )

    - results::String
"""
Base.@kwdef mutable struct ImportTeam200Response <: OpenAPI.APIModel
    results::Union{Nothing, String} = nothing

    function ImportTeam200Response(results, )
        OpenAPI.validate_property(ImportTeam200Response, Symbol("results"), results)
        return new(results, )
    end
end # type ImportTeam200Response

const _property_types_ImportTeam200Response = Dict{Symbol,String}(Symbol("results")=>"String", )
OpenAPI.property_type(::Type{ ImportTeam200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ImportTeam200Response[name]))}

function check_required(o::ImportTeam200Response)
    true
end

function OpenAPI.validate_property(::Type{ ImportTeam200Response }, name::Symbol, val)
end