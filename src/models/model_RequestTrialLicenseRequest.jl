# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RequestTrialLicense_request

    RequestTrialLicenseRequest(;
        users=nothing,
    )

    - users::Int64 : Number of users requested (20% extra is going to be added)
"""
Base.@kwdef mutable struct RequestTrialLicenseRequest <: OpenAPI.APIModel
    users::Union{Nothing, Int64} = nothing

    function RequestTrialLicenseRequest(users, )
        OpenAPI.validate_property(RequestTrialLicenseRequest, Symbol("users"), users)
        return new(users, )
    end
end # type RequestTrialLicenseRequest

const _property_types_RequestTrialLicenseRequest = Dict{Symbol,String}(Symbol("users")=>"Int64", )
OpenAPI.property_type(::Type{ RequestTrialLicenseRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RequestTrialLicenseRequest[name]))}

function check_required(o::RequestTrialLicenseRequest)
    o.users === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ RequestTrialLicenseRequest }, name::Symbol, val)
end
