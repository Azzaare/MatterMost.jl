# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SearchArchivedChannels_request

    SearchArchivedChannelsRequest(;
        term=nothing,
    )

    - term::String : The search term to match against the name or display name of archived channels
"""
Base.@kwdef mutable struct SearchArchivedChannelsRequest <: OpenAPI.APIModel
    term::Union{Nothing, String} = nothing

    function SearchArchivedChannelsRequest(term, )
        OpenAPI.validate_property(SearchArchivedChannelsRequest, Symbol("term"), term)
        return new(term, )
    end
end # type SearchArchivedChannelsRequest

const _property_types_SearchArchivedChannelsRequest = Dict{Symbol,String}(Symbol("term")=>"String", )
OpenAPI.property_type(::Type{ SearchArchivedChannelsRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SearchArchivedChannelsRequest[name]))}

function check_required(o::SearchArchivedChannelsRequest)
    o.term === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ SearchArchivedChannelsRequest }, name::Symbol, val)
end
