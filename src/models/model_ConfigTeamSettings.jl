# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Config_TeamSettings

    ConfigTeamSettings(;
        SiteName=nothing,
        MaxUsersPerTeam=nothing,
        EnableTeamCreation=nothing,
        EnableUserCreation=nothing,
        EnableOpenServer=nothing,
        RestrictCreationToDomains=nothing,
        EnableCustomBrand=nothing,
        CustomBrandText=nothing,
        CustomDescriptionText=nothing,
        RestrictDirectMessage=nothing,
        RestrictTeamInvite=nothing,
        RestrictPublicChannelManagement=nothing,
        RestrictPrivateChannelManagement=nothing,
        RestrictPublicChannelCreation=nothing,
        RestrictPrivateChannelCreation=nothing,
        RestrictPublicChannelDeletion=nothing,
        RestrictPrivateChannelDeletion=nothing,
        UserStatusAwayTimeout=nothing,
        MaxChannelsPerTeam=nothing,
        MaxNotificationsPerChannel=nothing,
    )

    - SiteName::String
    - MaxUsersPerTeam::Int64
    - EnableTeamCreation::Bool
    - EnableUserCreation::Bool
    - EnableOpenServer::Bool
    - RestrictCreationToDomains::String
    - EnableCustomBrand::Bool
    - CustomBrandText::String
    - CustomDescriptionText::String
    - RestrictDirectMessage::String
    - RestrictTeamInvite::String
    - RestrictPublicChannelManagement::String
    - RestrictPrivateChannelManagement::String
    - RestrictPublicChannelCreation::String
    - RestrictPrivateChannelCreation::String
    - RestrictPublicChannelDeletion::String
    - RestrictPrivateChannelDeletion::String
    - UserStatusAwayTimeout::Int64
    - MaxChannelsPerTeam::Int64
    - MaxNotificationsPerChannel::Int64
"""
Base.@kwdef mutable struct ConfigTeamSettings <: OpenAPI.APIModel
    SiteName::Union{Nothing, String} = nothing
    MaxUsersPerTeam::Union{Nothing, Int64} = nothing
    EnableTeamCreation::Union{Nothing, Bool} = nothing
    EnableUserCreation::Union{Nothing, Bool} = nothing
    EnableOpenServer::Union{Nothing, Bool} = nothing
    RestrictCreationToDomains::Union{Nothing, String} = nothing
    EnableCustomBrand::Union{Nothing, Bool} = nothing
    CustomBrandText::Union{Nothing, String} = nothing
    CustomDescriptionText::Union{Nothing, String} = nothing
    RestrictDirectMessage::Union{Nothing, String} = nothing
    RestrictTeamInvite::Union{Nothing, String} = nothing
    RestrictPublicChannelManagement::Union{Nothing, String} = nothing
    RestrictPrivateChannelManagement::Union{Nothing, String} = nothing
    RestrictPublicChannelCreation::Union{Nothing, String} = nothing
    RestrictPrivateChannelCreation::Union{Nothing, String} = nothing
    RestrictPublicChannelDeletion::Union{Nothing, String} = nothing
    RestrictPrivateChannelDeletion::Union{Nothing, String} = nothing
    UserStatusAwayTimeout::Union{Nothing, Int64} = nothing
    MaxChannelsPerTeam::Union{Nothing, Int64} = nothing
    MaxNotificationsPerChannel::Union{Nothing, Int64} = nothing

    function ConfigTeamSettings(SiteName, MaxUsersPerTeam, EnableTeamCreation, EnableUserCreation, EnableOpenServer, RestrictCreationToDomains, EnableCustomBrand, CustomBrandText, CustomDescriptionText, RestrictDirectMessage, RestrictTeamInvite, RestrictPublicChannelManagement, RestrictPrivateChannelManagement, RestrictPublicChannelCreation, RestrictPrivateChannelCreation, RestrictPublicChannelDeletion, RestrictPrivateChannelDeletion, UserStatusAwayTimeout, MaxChannelsPerTeam, MaxNotificationsPerChannel, )
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("SiteName"), SiteName)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("MaxUsersPerTeam"), MaxUsersPerTeam)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("EnableTeamCreation"), EnableTeamCreation)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("EnableUserCreation"), EnableUserCreation)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("EnableOpenServer"), EnableOpenServer)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictCreationToDomains"), RestrictCreationToDomains)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("EnableCustomBrand"), EnableCustomBrand)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("CustomBrandText"), CustomBrandText)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("CustomDescriptionText"), CustomDescriptionText)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictDirectMessage"), RestrictDirectMessage)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictTeamInvite"), RestrictTeamInvite)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictPublicChannelManagement"), RestrictPublicChannelManagement)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictPrivateChannelManagement"), RestrictPrivateChannelManagement)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictPublicChannelCreation"), RestrictPublicChannelCreation)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictPrivateChannelCreation"), RestrictPrivateChannelCreation)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictPublicChannelDeletion"), RestrictPublicChannelDeletion)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("RestrictPrivateChannelDeletion"), RestrictPrivateChannelDeletion)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("UserStatusAwayTimeout"), UserStatusAwayTimeout)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("MaxChannelsPerTeam"), MaxChannelsPerTeam)
        OpenAPI.validate_property(ConfigTeamSettings, Symbol("MaxNotificationsPerChannel"), MaxNotificationsPerChannel)
        return new(SiteName, MaxUsersPerTeam, EnableTeamCreation, EnableUserCreation, EnableOpenServer, RestrictCreationToDomains, EnableCustomBrand, CustomBrandText, CustomDescriptionText, RestrictDirectMessage, RestrictTeamInvite, RestrictPublicChannelManagement, RestrictPrivateChannelManagement, RestrictPublicChannelCreation, RestrictPrivateChannelCreation, RestrictPublicChannelDeletion, RestrictPrivateChannelDeletion, UserStatusAwayTimeout, MaxChannelsPerTeam, MaxNotificationsPerChannel, )
    end
end # type ConfigTeamSettings

const _property_types_ConfigTeamSettings = Dict{Symbol,String}(Symbol("SiteName")=>"String", Symbol("MaxUsersPerTeam")=>"Int64", Symbol("EnableTeamCreation")=>"Bool", Symbol("EnableUserCreation")=>"Bool", Symbol("EnableOpenServer")=>"Bool", Symbol("RestrictCreationToDomains")=>"String", Symbol("EnableCustomBrand")=>"Bool", Symbol("CustomBrandText")=>"String", Symbol("CustomDescriptionText")=>"String", Symbol("RestrictDirectMessage")=>"String", Symbol("RestrictTeamInvite")=>"String", Symbol("RestrictPublicChannelManagement")=>"String", Symbol("RestrictPrivateChannelManagement")=>"String", Symbol("RestrictPublicChannelCreation")=>"String", Symbol("RestrictPrivateChannelCreation")=>"String", Symbol("RestrictPublicChannelDeletion")=>"String", Symbol("RestrictPrivateChannelDeletion")=>"String", Symbol("UserStatusAwayTimeout")=>"Int64", Symbol("MaxChannelsPerTeam")=>"Int64", Symbol("MaxNotificationsPerChannel")=>"Int64", )
OpenAPI.property_type(::Type{ ConfigTeamSettings }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ConfigTeamSettings[name]))}

function check_required(o::ConfigTeamSettings)
    true
end

function OpenAPI.validate_property(::Type{ ConfigTeamSettings }, name::Symbol, val)
end
