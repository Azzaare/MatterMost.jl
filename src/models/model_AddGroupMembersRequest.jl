# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AddGroupMembers_request
An object containing the user ids of the members to add.

    AddGroupMembersRequest(;
        user_ids=nothing,
    )

    - user_ids::Vector{String}
"""
Base.@kwdef mutable struct AddGroupMembersRequest <: OpenAPI.APIModel
    user_ids::Union{Nothing, Vector{String}} = nothing

    function AddGroupMembersRequest(user_ids, )
        OpenAPI.validate_property(AddGroupMembersRequest, Symbol("user_ids"), user_ids)
        return new(user_ids, )
    end
end # type AddGroupMembersRequest

const _property_types_AddGroupMembersRequest = Dict{Symbol,String}(Symbol("user_ids")=>"Vector{String}", )
OpenAPI.property_type(::Type{ AddGroupMembersRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AddGroupMembersRequest[name]))}

function check_required(o::AddGroupMembersRequest)
    true
end

function OpenAPI.validate_property(::Type{ AddGroupMembersRequest }, name::Symbol, val)
end
