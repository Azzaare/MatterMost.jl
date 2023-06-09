# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SearchChannels_request

    SearchChannelsRequest(;
        term=nothing,
    )

    - term::String : The search term to match against the name or display name of channels
"""
Base.@kwdef mutable struct SearchChannelsRequest <: OpenAPI.APIModel
    term::Union{Nothing, String} = nothing

    function SearchChannelsRequest(term, )
        OpenAPI.validate_property(SearchChannelsRequest, Symbol("term"), term)
        return new(term, )
    end
end # type SearchChannelsRequest

const _property_types_SearchChannelsRequest = Dict{Symbol,String}(Symbol("term")=>"String", )
OpenAPI.property_type(::Type{ SearchChannelsRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SearchChannelsRequest[name]))}

function check_required(o::SearchChannelsRequest)
    o.term === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ SearchChannelsRequest }, name::Symbol, val)
end
