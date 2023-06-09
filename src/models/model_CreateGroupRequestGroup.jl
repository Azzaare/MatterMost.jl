# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateGroup_request_group
Group object to create.

    CreateGroupRequestGroup(;
        name=nothing,
        display_name=nothing,
        source=nothing,
        allow_reference=nothing,
    )

    - name::String : The unique group name used for at-mentioning.
    - display_name::String : The display name of the group which can include spaces.
    - source::String : Must be &#x60;custom&#x60;
    - allow_reference::Bool : Must be true
"""
Base.@kwdef mutable struct CreateGroupRequestGroup <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    source::Union{Nothing, String} = nothing
    allow_reference::Union{Nothing, Bool} = nothing

    function CreateGroupRequestGroup(name, display_name, source, allow_reference, )
        OpenAPI.validate_property(CreateGroupRequestGroup, Symbol("name"), name)
        OpenAPI.validate_property(CreateGroupRequestGroup, Symbol("display_name"), display_name)
        OpenAPI.validate_property(CreateGroupRequestGroup, Symbol("source"), source)
        OpenAPI.validate_property(CreateGroupRequestGroup, Symbol("allow_reference"), allow_reference)
        return new(name, display_name, source, allow_reference, )
    end
end # type CreateGroupRequestGroup

const _property_types_CreateGroupRequestGroup = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("display_name")=>"String", Symbol("source")=>"String", Symbol("allow_reference")=>"Bool", )
OpenAPI.property_type(::Type{ CreateGroupRequestGroup }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateGroupRequestGroup[name]))}

function check_required(o::CreateGroupRequestGroup)
    o.name === nothing && (return false)
    o.display_name === nothing && (return false)
    o.source === nothing && (return false)
    o.allow_reference === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateGroupRequestGroup }, name::Symbol, val)
end
