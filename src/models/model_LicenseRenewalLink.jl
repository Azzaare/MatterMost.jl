# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""LicenseRenewalLink

    LicenseRenewalLink(;
        renewal_link=nothing,
    )

    - renewal_link::String : License renewal link
"""
Base.@kwdef mutable struct LicenseRenewalLink <: OpenAPI.APIModel
    renewal_link::Union{Nothing, String} = nothing

    function LicenseRenewalLink(renewal_link, )
        OpenAPI.validate_property(LicenseRenewalLink, Symbol("renewal_link"), renewal_link)
        return new(renewal_link, )
    end
end # type LicenseRenewalLink

const _property_types_LicenseRenewalLink = Dict{Symbol,String}(Symbol("renewal_link")=>"String", )
OpenAPI.property_type(::Type{ LicenseRenewalLink }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_LicenseRenewalLink[name]))}

function check_required(o::LicenseRenewalLink)
    true
end

function OpenAPI.validate_property(::Type{ LicenseRenewalLink }, name::Symbol, val)
end
