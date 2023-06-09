# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ResetSamlAuthDataToEmail_request

    ResetSamlAuthDataToEmailRequest(;
        include_deleted=false,
        dry_run=false,
        user_ids=nothing,
    )

    - include_deleted::Bool : Whether to include deleted users.
    - dry_run::Bool : If set to true, the number of users who would be affected is returned.
    - user_ids::Vector{String} : If set to a non-empty array, then users whose IDs are not in the array will be excluded.
"""
Base.@kwdef mutable struct ResetSamlAuthDataToEmailRequest <: OpenAPI.APIModel
    include_deleted::Union{Nothing, Bool} = false
    dry_run::Union{Nothing, Bool} = false
    user_ids::Union{Nothing, Vector{String}} = nothing

    function ResetSamlAuthDataToEmailRequest(include_deleted, dry_run, user_ids, )
        OpenAPI.validate_property(ResetSamlAuthDataToEmailRequest, Symbol("include_deleted"), include_deleted)
        OpenAPI.validate_property(ResetSamlAuthDataToEmailRequest, Symbol("dry_run"), dry_run)
        OpenAPI.validate_property(ResetSamlAuthDataToEmailRequest, Symbol("user_ids"), user_ids)
        return new(include_deleted, dry_run, user_ids, )
    end
end # type ResetSamlAuthDataToEmailRequest

const _property_types_ResetSamlAuthDataToEmailRequest = Dict{Symbol,String}(Symbol("include_deleted")=>"Bool", Symbol("dry_run")=>"Bool", Symbol("user_ids")=>"Vector{String}", )
OpenAPI.property_type(::Type{ ResetSamlAuthDataToEmailRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ResetSamlAuthDataToEmailRequest[name]))}

function check_required(o::ResetSamlAuthDataToEmailRequest)
    true
end

function OpenAPI.validate_property(::Type{ ResetSamlAuthDataToEmailRequest }, name::Symbol, val)
end
