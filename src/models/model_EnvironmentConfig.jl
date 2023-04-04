# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""EnvironmentConfig

    EnvironmentConfig(;
        ServiceSettings=nothing,
        TeamSettings=nothing,
        SqlSettings=nothing,
        LogSettings=nothing,
        PasswordSettings=nothing,
        FileSettings=nothing,
        EmailSettings=nothing,
        RateLimitSettings=nothing,
        PrivacySettings=nothing,
        SupportSettings=nothing,
        GitLabSettings=nothing,
        GoogleSettings=nothing,
        Office365Settings=nothing,
        LdapSettings=nothing,
        ComplianceSettings=nothing,
        LocalizationSettings=nothing,
        SamlSettings=nothing,
        NativeAppSettings=nothing,
        ClusterSettings=nothing,
        MetricsSettings=nothing,
        AnalyticsSettings=nothing,
    )

    - ServiceSettings::EnvironmentConfigServiceSettings
    - TeamSettings::EnvironmentConfigTeamSettings
    - SqlSettings::EnvironmentConfigSqlSettings
    - LogSettings::EnvironmentConfigLogSettings
    - PasswordSettings::EnvironmentConfigPasswordSettings
    - FileSettings::EnvironmentConfigFileSettings
    - EmailSettings::EnvironmentConfigEmailSettings
    - RateLimitSettings::EnvironmentConfigRateLimitSettings
    - PrivacySettings::ConfigPrivacySettings
    - SupportSettings::EnvironmentConfigSupportSettings
    - GitLabSettings::EnvironmentConfigGitLabSettings
    - GoogleSettings::EnvironmentConfigGitLabSettings
    - Office365Settings::EnvironmentConfigGitLabSettings
    - LdapSettings::EnvironmentConfigLdapSettings
    - ComplianceSettings::EnvironmentConfigComplianceSettings
    - LocalizationSettings::EnvironmentConfigLocalizationSettings
    - SamlSettings::EnvironmentConfigSamlSettings
    - NativeAppSettings::EnvironmentConfigNativeAppSettings
    - ClusterSettings::EnvironmentConfigClusterSettings
    - MetricsSettings::EnvironmentConfigMetricsSettings
    - AnalyticsSettings::EnvironmentConfigAnalyticsSettings
"""
Base.@kwdef mutable struct EnvironmentConfig <: OpenAPI.APIModel
    ServiceSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigServiceSettings }
    TeamSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigTeamSettings }
    SqlSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigSqlSettings }
    LogSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigLogSettings }
    PasswordSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigPasswordSettings }
    FileSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigFileSettings }
    EmailSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigEmailSettings }
    RateLimitSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigRateLimitSettings }
    PrivacySettings = nothing # spec type: Union{ Nothing, ConfigPrivacySettings }
    SupportSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigSupportSettings }
    GitLabSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigGitLabSettings }
    GoogleSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigGitLabSettings }
    Office365Settings = nothing # spec type: Union{ Nothing, EnvironmentConfigGitLabSettings }
    LdapSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigLdapSettings }
    ComplianceSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigComplianceSettings }
    LocalizationSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigLocalizationSettings }
    SamlSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigSamlSettings }
    NativeAppSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigNativeAppSettings }
    ClusterSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigClusterSettings }
    MetricsSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigMetricsSettings }
    AnalyticsSettings = nothing # spec type: Union{ Nothing, EnvironmentConfigAnalyticsSettings }

    function EnvironmentConfig(ServiceSettings, TeamSettings, SqlSettings, LogSettings, PasswordSettings, FileSettings, EmailSettings, RateLimitSettings, PrivacySettings, SupportSettings, GitLabSettings, GoogleSettings, Office365Settings, LdapSettings, ComplianceSettings, LocalizationSettings, SamlSettings, NativeAppSettings, ClusterSettings, MetricsSettings, AnalyticsSettings, )
        OpenAPI.validate_property(EnvironmentConfig, Symbol("ServiceSettings"), ServiceSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("TeamSettings"), TeamSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("SqlSettings"), SqlSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("LogSettings"), LogSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("PasswordSettings"), PasswordSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("FileSettings"), FileSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("EmailSettings"), EmailSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("RateLimitSettings"), RateLimitSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("PrivacySettings"), PrivacySettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("SupportSettings"), SupportSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("GitLabSettings"), GitLabSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("GoogleSettings"), GoogleSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("Office365Settings"), Office365Settings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("LdapSettings"), LdapSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("ComplianceSettings"), ComplianceSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("LocalizationSettings"), LocalizationSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("SamlSettings"), SamlSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("NativeAppSettings"), NativeAppSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("ClusterSettings"), ClusterSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("MetricsSettings"), MetricsSettings)
        OpenAPI.validate_property(EnvironmentConfig, Symbol("AnalyticsSettings"), AnalyticsSettings)
        return new(ServiceSettings, TeamSettings, SqlSettings, LogSettings, PasswordSettings, FileSettings, EmailSettings, RateLimitSettings, PrivacySettings, SupportSettings, GitLabSettings, GoogleSettings, Office365Settings, LdapSettings, ComplianceSettings, LocalizationSettings, SamlSettings, NativeAppSettings, ClusterSettings, MetricsSettings, AnalyticsSettings, )
    end
end # type EnvironmentConfig

const _property_types_EnvironmentConfig = Dict{Symbol,String}(Symbol("ServiceSettings")=>"EnvironmentConfigServiceSettings", Symbol("TeamSettings")=>"EnvironmentConfigTeamSettings", Symbol("SqlSettings")=>"EnvironmentConfigSqlSettings", Symbol("LogSettings")=>"EnvironmentConfigLogSettings", Symbol("PasswordSettings")=>"EnvironmentConfigPasswordSettings", Symbol("FileSettings")=>"EnvironmentConfigFileSettings", Symbol("EmailSettings")=>"EnvironmentConfigEmailSettings", Symbol("RateLimitSettings")=>"EnvironmentConfigRateLimitSettings", Symbol("PrivacySettings")=>"ConfigPrivacySettings", Symbol("SupportSettings")=>"EnvironmentConfigSupportSettings", Symbol("GitLabSettings")=>"EnvironmentConfigGitLabSettings", Symbol("GoogleSettings")=>"EnvironmentConfigGitLabSettings", Symbol("Office365Settings")=>"EnvironmentConfigGitLabSettings", Symbol("LdapSettings")=>"EnvironmentConfigLdapSettings", Symbol("ComplianceSettings")=>"EnvironmentConfigComplianceSettings", Symbol("LocalizationSettings")=>"EnvironmentConfigLocalizationSettings", Symbol("SamlSettings")=>"EnvironmentConfigSamlSettings", Symbol("NativeAppSettings")=>"EnvironmentConfigNativeAppSettings", Symbol("ClusterSettings")=>"EnvironmentConfigClusterSettings", Symbol("MetricsSettings")=>"EnvironmentConfigMetricsSettings", Symbol("AnalyticsSettings")=>"EnvironmentConfigAnalyticsSettings", )
OpenAPI.property_type(::Type{ EnvironmentConfig }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_EnvironmentConfig[name]))}

function check_required(o::EnvironmentConfig)
    true
end

function OpenAPI.validate_property(::Type{ EnvironmentConfig }, name::Symbol, val)
end