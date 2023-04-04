# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UpdateTeamPrivacy_request

    UpdateTeamPrivacyRequest(;
        privacy=nothing,
    )

    - privacy::String : Team privacy setting: &#39;O&#39; for a public (open) team, &#39;I&#39; for a private (invitation only) team
"""
Base.@kwdef mutable struct UpdateTeamPrivacyRequest <: OpenAPI.APIModel
    privacy::Union{Nothing, String} = nothing

    function UpdateTeamPrivacyRequest(privacy, )
        OpenAPI.validate_property(UpdateTeamPrivacyRequest, Symbol("privacy"), privacy)
        return new(privacy, )
    end
end # type UpdateTeamPrivacyRequest

const _property_types_UpdateTeamPrivacyRequest = Dict{Symbol,String}(Symbol("privacy")=>"String", )
OpenAPI.property_type(::Type{ UpdateTeamPrivacyRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpdateTeamPrivacyRequest[name]))}

function check_required(o::UpdateTeamPrivacyRequest)
    o.privacy === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ UpdateTeamPrivacyRequest }, name::Symbol, val)
end