# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AddChannelMember_request

    AddChannelMemberRequest(;
        user_id=nothing,
        post_root_id=nothing,
    )

    - user_id::String : The ID of user to add into the channel
    - post_root_id::String : The ID of root post where link to add channel member originates
"""
Base.@kwdef mutable struct AddChannelMemberRequest <: OpenAPI.APIModel
    user_id::Union{Nothing, String} = nothing
    post_root_id::Union{Nothing, String} = nothing

    function AddChannelMemberRequest(user_id, post_root_id, )
        OpenAPI.validate_property(AddChannelMemberRequest, Symbol("user_id"), user_id)
        OpenAPI.validate_property(AddChannelMemberRequest, Symbol("post_root_id"), post_root_id)
        return new(user_id, post_root_id, )
    end
end # type AddChannelMemberRequest

const _property_types_AddChannelMemberRequest = Dict{Symbol,String}(Symbol("user_id")=>"String", Symbol("post_root_id")=>"String", )
OpenAPI.property_type(::Type{ AddChannelMemberRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AddChannelMemberRequest[name]))}

function check_required(o::AddChannelMemberRequest)
    o.user_id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ AddChannelMemberRequest }, name::Symbol, val)
end