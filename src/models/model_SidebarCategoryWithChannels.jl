# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SidebarCategoryWithChannels
User&#39;s sidebar category with it&#39;s channels

    SidebarCategoryWithChannels(;
        id=nothing,
        user_id=nothing,
        team_id=nothing,
        display_name=nothing,
        type=nothing,
        channel_ids=nothing,
    )

    - id::String
    - user_id::String
    - team_id::String
    - display_name::String
    - type::String
    - channel_ids::Vector{String}
"""
Base.@kwdef mutable struct SidebarCategoryWithChannels <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    user_id::Union{Nothing, String} = nothing
    team_id::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    channel_ids::Union{Nothing, Vector{String}} = nothing

    function SidebarCategoryWithChannels(id, user_id, team_id, display_name, type, channel_ids, )
        OpenAPI.validate_property(SidebarCategoryWithChannels, Symbol("id"), id)
        OpenAPI.validate_property(SidebarCategoryWithChannels, Symbol("user_id"), user_id)
        OpenAPI.validate_property(SidebarCategoryWithChannels, Symbol("team_id"), team_id)
        OpenAPI.validate_property(SidebarCategoryWithChannels, Symbol("display_name"), display_name)
        OpenAPI.validate_property(SidebarCategoryWithChannels, Symbol("type"), type)
        OpenAPI.validate_property(SidebarCategoryWithChannels, Symbol("channel_ids"), channel_ids)
        return new(id, user_id, team_id, display_name, type, channel_ids, )
    end
end # type SidebarCategoryWithChannels

const _property_types_SidebarCategoryWithChannels = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("user_id")=>"String", Symbol("team_id")=>"String", Symbol("display_name")=>"String", Symbol("type")=>"String", Symbol("channel_ids")=>"Vector{String}", )
OpenAPI.property_type(::Type{ SidebarCategoryWithChannels }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SidebarCategoryWithChannels[name]))}

function check_required(o::SidebarCategoryWithChannels)
    true
end

function OpenAPI.validate_property(::Type{ SidebarCategoryWithChannels }, name::Symbol, val)
    if name === Symbol("type")
        OpenAPI.validate_param(name, "SidebarCategoryWithChannels", :enum, val, ["channels", "custom", "direct_messages", "favorites"])
    end
end
