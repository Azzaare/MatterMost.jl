# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""EnvironmentConfig_SamlSettings

    EnvironmentConfigSamlSettings(;
        Enable=nothing,
        Verify=nothing,
        Encrypt=nothing,
        IdpUrl=nothing,
        IdpDescriptorUrl=nothing,
        AssertionConsumerServiceURL=nothing,
        IdpCertificateFile=nothing,
        PublicCertificateFile=nothing,
        PrivateKeyFile=nothing,
        FirstNameAttribute=nothing,
        LastNameAttribute=nothing,
        EmailAttribute=nothing,
        UsernameAttribute=nothing,
        NicknameAttribute=nothing,
        LocaleAttribute=nothing,
        PositionAttribute=nothing,
        LoginButtonText=nothing,
    )

    - Enable::Bool
    - Verify::Bool
    - Encrypt::Bool
    - IdpUrl::Bool
    - IdpDescriptorUrl::Bool
    - AssertionConsumerServiceURL::Bool
    - IdpCertificateFile::Bool
    - PublicCertificateFile::Bool
    - PrivateKeyFile::Bool
    - FirstNameAttribute::Bool
    - LastNameAttribute::Bool
    - EmailAttribute::Bool
    - UsernameAttribute::Bool
    - NicknameAttribute::Bool
    - LocaleAttribute::Bool
    - PositionAttribute::Bool
    - LoginButtonText::Bool
"""
Base.@kwdef mutable struct EnvironmentConfigSamlSettings <: OpenAPI.APIModel
    Enable::Union{Nothing, Bool} = nothing
    Verify::Union{Nothing, Bool} = nothing
    Encrypt::Union{Nothing, Bool} = nothing
    IdpUrl::Union{Nothing, Bool} = nothing
    IdpDescriptorUrl::Union{Nothing, Bool} = nothing
    AssertionConsumerServiceURL::Union{Nothing, Bool} = nothing
    IdpCertificateFile::Union{Nothing, Bool} = nothing
    PublicCertificateFile::Union{Nothing, Bool} = nothing
    PrivateKeyFile::Union{Nothing, Bool} = nothing
    FirstNameAttribute::Union{Nothing, Bool} = nothing
    LastNameAttribute::Union{Nothing, Bool} = nothing
    EmailAttribute::Union{Nothing, Bool} = nothing
    UsernameAttribute::Union{Nothing, Bool} = nothing
    NicknameAttribute::Union{Nothing, Bool} = nothing
    LocaleAttribute::Union{Nothing, Bool} = nothing
    PositionAttribute::Union{Nothing, Bool} = nothing
    LoginButtonText::Union{Nothing, Bool} = nothing

    function EnvironmentConfigSamlSettings(Enable, Verify, Encrypt, IdpUrl, IdpDescriptorUrl, AssertionConsumerServiceURL, IdpCertificateFile, PublicCertificateFile, PrivateKeyFile, FirstNameAttribute, LastNameAttribute, EmailAttribute, UsernameAttribute, NicknameAttribute, LocaleAttribute, PositionAttribute, LoginButtonText, )
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("Enable"), Enable)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("Verify"), Verify)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("Encrypt"), Encrypt)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("IdpUrl"), IdpUrl)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("IdpDescriptorUrl"), IdpDescriptorUrl)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("AssertionConsumerServiceURL"), AssertionConsumerServiceURL)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("IdpCertificateFile"), IdpCertificateFile)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("PublicCertificateFile"), PublicCertificateFile)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("PrivateKeyFile"), PrivateKeyFile)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("FirstNameAttribute"), FirstNameAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("LastNameAttribute"), LastNameAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("EmailAttribute"), EmailAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("UsernameAttribute"), UsernameAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("NicknameAttribute"), NicknameAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("LocaleAttribute"), LocaleAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("PositionAttribute"), PositionAttribute)
        OpenAPI.validate_property(EnvironmentConfigSamlSettings, Symbol("LoginButtonText"), LoginButtonText)
        return new(Enable, Verify, Encrypt, IdpUrl, IdpDescriptorUrl, AssertionConsumerServiceURL, IdpCertificateFile, PublicCertificateFile, PrivateKeyFile, FirstNameAttribute, LastNameAttribute, EmailAttribute, UsernameAttribute, NicknameAttribute, LocaleAttribute, PositionAttribute, LoginButtonText, )
    end
end # type EnvironmentConfigSamlSettings

const _property_types_EnvironmentConfigSamlSettings = Dict{Symbol,String}(Symbol("Enable")=>"Bool", Symbol("Verify")=>"Bool", Symbol("Encrypt")=>"Bool", Symbol("IdpUrl")=>"Bool", Symbol("IdpDescriptorUrl")=>"Bool", Symbol("AssertionConsumerServiceURL")=>"Bool", Symbol("IdpCertificateFile")=>"Bool", Symbol("PublicCertificateFile")=>"Bool", Symbol("PrivateKeyFile")=>"Bool", Symbol("FirstNameAttribute")=>"Bool", Symbol("LastNameAttribute")=>"Bool", Symbol("EmailAttribute")=>"Bool", Symbol("UsernameAttribute")=>"Bool", Symbol("NicknameAttribute")=>"Bool", Symbol("LocaleAttribute")=>"Bool", Symbol("PositionAttribute")=>"Bool", Symbol("LoginButtonText")=>"Bool", )
OpenAPI.property_type(::Type{ EnvironmentConfigSamlSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_EnvironmentConfigSamlSettings[name]))}

function check_required(o::EnvironmentConfigSamlSettings)
    true
end

function OpenAPI.validate_property(::Type{ EnvironmentConfigSamlSettings }, name::Symbol, val)
end
