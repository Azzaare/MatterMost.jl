# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""GetSamlMetadataFromIdp_request

    GetSamlMetadataFromIdpRequest(;
        saml_metadata_url=nothing,
    )

    - saml_metadata_url::String : The URL from which to retrieve the SAML IDP data.
"""
Base.@kwdef mutable struct GetSamlMetadataFromIdpRequest <: OpenAPI.APIModel
    saml_metadata_url::Union{Nothing, String} = nothing

    function GetSamlMetadataFromIdpRequest(saml_metadata_url, )
        OpenAPI.validate_property(GetSamlMetadataFromIdpRequest, Symbol("saml_metadata_url"), saml_metadata_url)
        return new(saml_metadata_url, )
    end
end # type GetSamlMetadataFromIdpRequest

const _property_types_GetSamlMetadataFromIdpRequest = Dict{Symbol,String}(Symbol("saml_metadata_url")=>"String", )
OpenAPI.property_type(::Type{ GetSamlMetadataFromIdpRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_GetSamlMetadataFromIdpRequest[name]))}

function check_required(o::GetSamlMetadataFromIdpRequest)
    true
end

function OpenAPI.validate_property(::Type{ GetSamlMetadataFromIdpRequest }, name::Symbol, val)
end
