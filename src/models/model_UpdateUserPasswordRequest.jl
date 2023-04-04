# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UpdateUserPassword_request

    UpdateUserPasswordRequest(;
        current_password=nothing,
        new_password=nothing,
    )

    - current_password::String : The current password for the user
    - new_password::String : The new password for the user
"""
Base.@kwdef mutable struct UpdateUserPasswordRequest <: OpenAPI.APIModel
    current_password::Union{Nothing, String} = nothing
    new_password::Union{Nothing, String} = nothing

    function UpdateUserPasswordRequest(current_password, new_password, )
        OpenAPI.validate_property(UpdateUserPasswordRequest, Symbol("current_password"), current_password)
        OpenAPI.validate_property(UpdateUserPasswordRequest, Symbol("new_password"), new_password)
        return new(current_password, new_password, )
    end
end # type UpdateUserPasswordRequest

const _property_types_UpdateUserPasswordRequest = Dict{Symbol,String}(Symbol("current_password")=>"String", Symbol("new_password")=>"String", )
OpenAPI.property_type(::Type{ UpdateUserPasswordRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpdateUserPasswordRequest[name]))}

function check_required(o::UpdateUserPasswordRequest)
    o.new_password === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ UpdateUserPasswordRequest }, name::Symbol, val)
end