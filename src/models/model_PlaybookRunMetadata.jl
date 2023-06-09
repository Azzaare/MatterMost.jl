# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PlaybookRunMetadata

    PlaybookRunMetadata(;
        channel_name=nothing,
        channel_display_name=nothing,
        team_name=nothing,
        num_members=nothing,
        total_posts=nothing,
    )

    - channel_name::String : Name of the channel associated to the playbook run.
    - channel_display_name::String : Display name of the channel associated to the playbook run.
    - team_name::String : Name of the team the playbook run is in.
    - num_members::Int64 : Number of users that have been members of the playbook run at any point.
    - total_posts::Int64 : Number of posts in the channel associated to the playbook run.
"""
Base.@kwdef mutable struct PlaybookRunMetadata <: OpenAPI.APIModel
    channel_name::Union{Nothing, String} = nothing
    channel_display_name::Union{Nothing, String} = nothing
    team_name::Union{Nothing, String} = nothing
    num_members::Union{Nothing, Int64} = nothing
    total_posts::Union{Nothing, Int64} = nothing

    function PlaybookRunMetadata(channel_name, channel_display_name, team_name, num_members, total_posts, )
        OpenAPI.validate_property(PlaybookRunMetadata, Symbol("channel_name"), channel_name)
        OpenAPI.validate_property(PlaybookRunMetadata, Symbol("channel_display_name"), channel_display_name)
        OpenAPI.validate_property(PlaybookRunMetadata, Symbol("team_name"), team_name)
        OpenAPI.validate_property(PlaybookRunMetadata, Symbol("num_members"), num_members)
        OpenAPI.validate_property(PlaybookRunMetadata, Symbol("total_posts"), total_posts)
        return new(channel_name, channel_display_name, team_name, num_members, total_posts, )
    end
end # type PlaybookRunMetadata

const _property_types_PlaybookRunMetadata = Dict{Symbol,String}(Symbol("channel_name")=>"String", Symbol("channel_display_name")=>"String", Symbol("team_name")=>"String", Symbol("num_members")=>"Int64", Symbol("total_posts")=>"Int64", )
OpenAPI.property_type(::Type{ PlaybookRunMetadata }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PlaybookRunMetadata[name]))}

function check_required(o::PlaybookRunMetadata)
    true
end

function OpenAPI.validate_property(::Type{ PlaybookRunMetadata }, name::Symbol, val)
    if name === Symbol("num_members")
        OpenAPI.validate_param(name, "PlaybookRunMetadata", :format, val, "int64")
    end
    if name === Symbol("total_posts")
        OpenAPI.validate_param(name, "PlaybookRunMetadata", :format, val, "int64")
    end
end
