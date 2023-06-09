# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateGroup_request

    CreateGroupRequest(;
        group=nothing,
        user_ids=nothing,
    )

    - group::CreateGroupRequestGroup
    - user_ids::Vector{String} : The user ids of the group members to add.
"""
Base.@kwdef mutable struct CreateGroupRequest <: OpenAPI.APIModel
    group = nothing # spec type: Union{ Nothing, CreateGroupRequestGroup }
    user_ids::Union{Nothing, Vector{String}} = nothing

    function CreateGroupRequest(group, user_ids, )
        OpenAPI.validate_property(CreateGroupRequest, Symbol("group"), group)
        OpenAPI.validate_property(CreateGroupRequest, Symbol("user_ids"), user_ids)
        return new(group, user_ids, )
    end
end # type CreateGroupRequest

const _property_types_CreateGroupRequest = Dict{Symbol,String}(Symbol("group")=>"CreateGroupRequestGroup", Symbol("user_ids")=>"Vector{String}", )
OpenAPI.property_type(::Type{ CreateGroupRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateGroupRequest[name]))}

function check_required(o::CreateGroupRequest)
    o.group === nothing && (return false)
    o.user_ids === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateGroupRequest }, name::Symbol, val)
end
