# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UserTermsOfService

    UserTermsOfService(;
        user_id=nothing,
        terms_of_service_id=nothing,
        create_at=nothing,
    )

    - user_id::String : The unique identifier of the user who performed this terms of service action.
    - terms_of_service_id::String : The unique identifier of the terms of service the action was performed on.
    - create_at::Int64 : The time in milliseconds that this action was performed.
"""
Base.@kwdef mutable struct UserTermsOfService <: OpenAPI.APIModel
    user_id::Union{Nothing, String} = nothing
    terms_of_service_id::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing

    function UserTermsOfService(user_id, terms_of_service_id, create_at, )
        OpenAPI.validate_property(UserTermsOfService, Symbol("user_id"), user_id)
        OpenAPI.validate_property(UserTermsOfService, Symbol("terms_of_service_id"), terms_of_service_id)
        OpenAPI.validate_property(UserTermsOfService, Symbol("create_at"), create_at)
        return new(user_id, terms_of_service_id, create_at, )
    end
end # type UserTermsOfService

const _property_types_UserTermsOfService = Dict{Symbol,String}(Symbol("user_id")=>"String", Symbol("terms_of_service_id")=>"String", Symbol("create_at")=>"Int64", )
OpenAPI.property_type(::Type{ UserTermsOfService }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UserTermsOfService[name]))}

function check_required(o::UserTermsOfService)
    true
end

function OpenAPI.validate_property(::Type{ UserTermsOfService }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "UserTermsOfService", :format, val, "int64")
    end
end
