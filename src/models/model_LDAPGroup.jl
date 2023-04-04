# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""LDAPGroup
A LDAP group

    LDAPGroup(;
        has_syncables=nothing,
        mattermost_group_id=nothing,
        primary_key=nothing,
        name=nothing,
    )

    - has_syncables::Bool
    - mattermost_group_id::String
    - primary_key::String
    - name::String
"""
Base.@kwdef mutable struct LDAPGroup <: OpenAPI.APIModel
    has_syncables::Union{Nothing, Bool} = nothing
    mattermost_group_id::Union{Nothing, String} = nothing
    primary_key::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing

    function LDAPGroup(has_syncables, mattermost_group_id, primary_key, name, )
        OpenAPI.validate_property(LDAPGroup, Symbol("has_syncables"), has_syncables)
        OpenAPI.validate_property(LDAPGroup, Symbol("mattermost_group_id"), mattermost_group_id)
        OpenAPI.validate_property(LDAPGroup, Symbol("primary_key"), primary_key)
        OpenAPI.validate_property(LDAPGroup, Symbol("name"), name)
        return new(has_syncables, mattermost_group_id, primary_key, name, )
    end
end # type LDAPGroup

const _property_types_LDAPGroup = Dict{Symbol,String}(Symbol("has_syncables")=>"Bool", Symbol("mattermost_group_id")=>"String", Symbol("primary_key")=>"String", Symbol("name")=>"String", )
OpenAPI.property_type(::Type{ LDAPGroup }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_LDAPGroup[name]))}

function check_required(o::LDAPGroup)
    true
end

function OpenAPI.validate_property(::Type{ LDAPGroup }, name::Symbol, val)
end