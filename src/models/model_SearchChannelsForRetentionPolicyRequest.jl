# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SearchChannelsForRetentionPolicy_request

    SearchChannelsForRetentionPolicyRequest(;
        term=nothing,
        team_ids=nothing,
        public=nothing,
        private=nothing,
        deleted=nothing,
    )

    - term::String : The string to search in the channel name, display name, and purpose.
    - team_ids::Vector{String} : Filters results to channels belonging to the given team ids 
    - public::Bool : Filters results to only return Public / Open channels, can be used in conjunction with &#x60;private&#x60; to return both &#x60;public&#x60; and &#x60;private&#x60; channels 
    - private::Bool : Filters results to only return Private channels, can be used in conjunction with &#x60;public&#x60; to return both &#x60;private&#x60; and &#x60;public&#x60; channels 
    - deleted::Bool : Filters results to only return deleted / archived channels 
"""
Base.@kwdef mutable struct SearchChannelsForRetentionPolicyRequest <: OpenAPI.APIModel
    term::Union{Nothing, String} = nothing
    team_ids::Union{Nothing, Vector{String}} = nothing
    public::Union{Nothing, Bool} = nothing
    private::Union{Nothing, Bool} = nothing
    deleted::Union{Nothing, Bool} = nothing

    function SearchChannelsForRetentionPolicyRequest(term, team_ids, public, private, deleted, )
        OpenAPI.validate_property(SearchChannelsForRetentionPolicyRequest, Symbol("term"), term)
        OpenAPI.validate_property(SearchChannelsForRetentionPolicyRequest, Symbol("team_ids"), team_ids)
        OpenAPI.validate_property(SearchChannelsForRetentionPolicyRequest, Symbol("public"), public)
        OpenAPI.validate_property(SearchChannelsForRetentionPolicyRequest, Symbol("private"), private)
        OpenAPI.validate_property(SearchChannelsForRetentionPolicyRequest, Symbol("deleted"), deleted)
        return new(term, team_ids, public, private, deleted, )
    end
end # type SearchChannelsForRetentionPolicyRequest

const _property_types_SearchChannelsForRetentionPolicyRequest = Dict{Symbol,String}(Symbol("term")=>"String", Symbol("team_ids")=>"Vector{String}", Symbol("public")=>"Bool", Symbol("private")=>"Bool", Symbol("deleted")=>"Bool", )
OpenAPI.property_type(::Type{ SearchChannelsForRetentionPolicyRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SearchChannelsForRetentionPolicyRequest[name]))}

function check_required(o::SearchChannelsForRetentionPolicyRequest)
    true
end

function OpenAPI.validate_property(::Type{ SearchChannelsForRetentionPolicyRequest }, name::Symbol, val)
end
