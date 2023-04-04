# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SearchUsers_request

    SearchUsersRequest(;
        term=nothing,
        team_id=nothing,
        not_in_team_id=nothing,
        in_channel_id=nothing,
        not_in_channel_id=nothing,
        in_group_id=nothing,
        group_constrained=nothing,
        allow_inactive=nothing,
        without_team=nothing,
        limit=100,
    )

    - term::String : The term to match against username, full name, nickname and email
    - team_id::String : If provided, only search users on this team
    - not_in_team_id::String : If provided, only search users not on this team
    - in_channel_id::String : If provided, only search users in this channel
    - not_in_channel_id::String : If provided, only search users not in this channel. Must specifiy &#x60;team_id&#x60; when using this option
    - in_group_id::String : If provided, only search users in this group. Must have &#x60;manage_system&#x60; permission.
    - group_constrained::Bool : When used with &#x60;not_in_channel_id&#x60; or &#x60;not_in_team_id&#x60;, returns only the users that are allowed to join the channel or team based on its group constrains.
    - allow_inactive::Bool : When &#x60;true&#x60;, include deactivated users in the results
    - without_team::Bool : Set this to &#x60;true&#x60; if you would like to search for users that are not on a team. This option takes precendence over &#x60;team_id&#x60;, &#x60;in_channel_id&#x60;, and &#x60;not_in_channel_id&#x60;.
    - limit::Int64 : The maximum number of users to return in the results  __Available as of server version 5.6. Defaults to &#x60;100&#x60; if not provided or on an earlier server version.__ 
"""
Base.@kwdef mutable struct SearchUsersRequest <: OpenAPI.APIModel
    term::Union{Nothing, String} = nothing
    team_id::Union{Nothing, String} = nothing
    not_in_team_id::Union{Nothing, String} = nothing
    in_channel_id::Union{Nothing, String} = nothing
    not_in_channel_id::Union{Nothing, String} = nothing
    in_group_id::Union{Nothing, String} = nothing
    group_constrained::Union{Nothing, Bool} = nothing
    allow_inactive::Union{Nothing, Bool} = nothing
    without_team::Union{Nothing, Bool} = nothing
    limit::Union{Nothing, Int64} = 100

    function SearchUsersRequest(term, team_id, not_in_team_id, in_channel_id, not_in_channel_id, in_group_id, group_constrained, allow_inactive, without_team, limit, )
        OpenAPI.validate_property(SearchUsersRequest, Symbol("term"), term)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("team_id"), team_id)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("not_in_team_id"), not_in_team_id)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("in_channel_id"), in_channel_id)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("not_in_channel_id"), not_in_channel_id)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("in_group_id"), in_group_id)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("group_constrained"), group_constrained)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("allow_inactive"), allow_inactive)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("without_team"), without_team)
        OpenAPI.validate_property(SearchUsersRequest, Symbol("limit"), limit)
        return new(term, team_id, not_in_team_id, in_channel_id, not_in_channel_id, in_group_id, group_constrained, allow_inactive, without_team, limit, )
    end
end # type SearchUsersRequest

const _property_types_SearchUsersRequest = Dict{Symbol,String}(Symbol("term")=>"String", Symbol("team_id")=>"String", Symbol("not_in_team_id")=>"String", Symbol("in_channel_id")=>"String", Symbol("not_in_channel_id")=>"String", Symbol("in_group_id")=>"String", Symbol("group_constrained")=>"Bool", Symbol("allow_inactive")=>"Bool", Symbol("without_team")=>"Bool", Symbol("limit")=>"Int64", )
OpenAPI.property_type(::Type{ SearchUsersRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SearchUsersRequest[name]))}

function check_required(o::SearchUsersRequest)
    o.term === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ SearchUsersRequest }, name::Symbol, val)
end
