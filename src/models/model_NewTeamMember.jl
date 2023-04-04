# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""NewTeamMember

    NewTeamMember(;
        id=nothing,
        username=nothing,
        first_name=nothing,
        last_name=nothing,
        nickname=nothing,
        position=nothing,
        create_at=nothing,
    )

    - id::String : The user&#39;s ID.
    - username::String
    - first_name::String
    - last_name::String
    - nickname::String
    - position::String : The user&#39;s position field value.
    - create_at::Int64 : The creation timestamp of the team member record.
"""
Base.@kwdef mutable struct NewTeamMember <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    first_name::Union{Nothing, String} = nothing
    last_name::Union{Nothing, String} = nothing
    nickname::Union{Nothing, String} = nothing
    position::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing

    function NewTeamMember(id, username, first_name, last_name, nickname, position, create_at, )
        OpenAPI.validate_property(NewTeamMember, Symbol("id"), id)
        OpenAPI.validate_property(NewTeamMember, Symbol("username"), username)
        OpenAPI.validate_property(NewTeamMember, Symbol("first_name"), first_name)
        OpenAPI.validate_property(NewTeamMember, Symbol("last_name"), last_name)
        OpenAPI.validate_property(NewTeamMember, Symbol("nickname"), nickname)
        OpenAPI.validate_property(NewTeamMember, Symbol("position"), position)
        OpenAPI.validate_property(NewTeamMember, Symbol("create_at"), create_at)
        return new(id, username, first_name, last_name, nickname, position, create_at, )
    end
end # type NewTeamMember

const _property_types_NewTeamMember = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("username")=>"String", Symbol("first_name")=>"String", Symbol("last_name")=>"String", Symbol("nickname")=>"String", Symbol("position")=>"String", Symbol("create_at")=>"Int64", )
OpenAPI.property_type(::Type{ NewTeamMember }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_NewTeamMember[name]))}

function check_required(o::NewTeamMember)
    true
end

function OpenAPI.validate_property(::Type{ NewTeamMember }, name::Symbol, val)
end
