# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Scheme

    Scheme(;
        id=nothing,
        name=nothing,
        description=nothing,
        create_at=nothing,
        update_at=nothing,
        delete_at=nothing,
        scope=nothing,
        default_team_admin_role=nothing,
        default_team_user_role=nothing,
        default_channel_admin_role=nothing,
        default_channel_user_role=nothing,
    )

    - id::String : The unique identifier of the scheme.
    - name::String : The human readable name for the scheme.
    - description::String : A human readable description of the scheme.
    - create_at::Int64 : The time at which the scheme was created.
    - update_at::Int64 : The time at which the scheme was last updated.
    - delete_at::Int64 : The time at which the scheme was deleted.
    - scope::String : The scope to which this scheme can be applied, either \&quot;team\&quot; or \&quot;channel\&quot;.
    - default_team_admin_role::String : The id of the default team admin role for this scheme.
    - default_team_user_role::String : The id of the default team user role for this scheme.
    - default_channel_admin_role::String : The id of the default channel admin role for this scheme.
    - default_channel_user_role::String : The id of the default channel user role for this scheme.
"""
Base.@kwdef mutable struct Scheme <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    update_at::Union{Nothing, Int64} = nothing
    delete_at::Union{Nothing, Int64} = nothing
    scope::Union{Nothing, String} = nothing
    default_team_admin_role::Union{Nothing, String} = nothing
    default_team_user_role::Union{Nothing, String} = nothing
    default_channel_admin_role::Union{Nothing, String} = nothing
    default_channel_user_role::Union{Nothing, String} = nothing

    function Scheme(id, name, description, create_at, update_at, delete_at, scope, default_team_admin_role, default_team_user_role, default_channel_admin_role, default_channel_user_role, )
        OpenAPI.validate_property(Scheme, Symbol("id"), id)
        OpenAPI.validate_property(Scheme, Symbol("name"), name)
        OpenAPI.validate_property(Scheme, Symbol("description"), description)
        OpenAPI.validate_property(Scheme, Symbol("create_at"), create_at)
        OpenAPI.validate_property(Scheme, Symbol("update_at"), update_at)
        OpenAPI.validate_property(Scheme, Symbol("delete_at"), delete_at)
        OpenAPI.validate_property(Scheme, Symbol("scope"), scope)
        OpenAPI.validate_property(Scheme, Symbol("default_team_admin_role"), default_team_admin_role)
        OpenAPI.validate_property(Scheme, Symbol("default_team_user_role"), default_team_user_role)
        OpenAPI.validate_property(Scheme, Symbol("default_channel_admin_role"), default_channel_admin_role)
        OpenAPI.validate_property(Scheme, Symbol("default_channel_user_role"), default_channel_user_role)
        return new(id, name, description, create_at, update_at, delete_at, scope, default_team_admin_role, default_team_user_role, default_channel_admin_role, default_channel_user_role, )
    end
end # type Scheme

const _property_types_Scheme = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("name")=>"String", Symbol("description")=>"String", Symbol("create_at")=>"Int64", Symbol("update_at")=>"Int64", Symbol("delete_at")=>"Int64", Symbol("scope")=>"String", Symbol("default_team_admin_role")=>"String", Symbol("default_team_user_role")=>"String", Symbol("default_channel_admin_role")=>"String", Symbol("default_channel_user_role")=>"String", )
OpenAPI.property_type(::Type{ Scheme }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Scheme[name]))}

function check_required(o::Scheme)
    true
end

function OpenAPI.validate_property(::Type{ Scheme }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "Scheme", :format, val, "int64")
    end
    if name === Symbol("update_at")
        OpenAPI.validate_param(name, "Scheme", :format, val, "int64")
    end
    if name === Symbol("delete_at")
        OpenAPI.validate_param(name, "Scheme", :format, val, "int64")
    end
end
