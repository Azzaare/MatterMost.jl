# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SearchTeams_200_response

    SearchTeams200Response(;
        teams=nothing,
        total_count=nothing,
    )

    - teams::Vector{Team} : The teams that matched the query.
    - total_count::Float64 : The total number of results, regardless of page and per_page requested.
"""
Base.@kwdef mutable struct SearchTeams200Response <: OpenAPI.APIModel
    teams::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Team} }
    total_count::Union{Nothing, Float64} = nothing

    function SearchTeams200Response(teams, total_count, )
        OpenAPI.validate_property(SearchTeams200Response, Symbol("teams"), teams)
        OpenAPI.validate_property(SearchTeams200Response, Symbol("total_count"), total_count)
        return new(teams, total_count, )
    end
end # type SearchTeams200Response

const _property_types_SearchTeams200Response = Dict{Symbol,String}(Symbol("teams")=>"Vector{Team}", Symbol("total_count")=>"Float64", )
OpenAPI.property_type(::Type{ SearchTeams200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SearchTeams200Response[name]))}

function check_required(o::SearchTeams200Response)
    true
end

function OpenAPI.validate_property(::Type{ SearchTeams200Response }, name::Symbol, val)
end
