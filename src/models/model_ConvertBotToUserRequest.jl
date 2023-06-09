# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ConvertBotToUser_request

    ConvertBotToUserRequest(;
        email=nothing,
        username=nothing,
        password=nothing,
        first_name=nothing,
        last_name=nothing,
        nickname=nothing,
        locale=nothing,
        position=nothing,
        props=nothing,
        notify_props=nothing,
    )

    - email::String
    - username::String
    - password::String
    - first_name::String
    - last_name::String
    - nickname::String
    - locale::String
    - position::String
    - props::Any
    - notify_props::UserNotifyProps
"""
Base.@kwdef mutable struct ConvertBotToUserRequest <: OpenAPI.APIModel
    email::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    password::Union{Nothing, String} = nothing
    first_name::Union{Nothing, String} = nothing
    last_name::Union{Nothing, String} = nothing
    nickname::Union{Nothing, String} = nothing
    locale::Union{Nothing, String} = nothing
    position::Union{Nothing, String} = nothing
    props::Union{Nothing, Any} = nothing
    notify_props = nothing # spec type: Union{ Nothing, UserNotifyProps }

    function ConvertBotToUserRequest(email, username, password, first_name, last_name, nickname, locale, position, props, notify_props, )
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("email"), email)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("username"), username)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("password"), password)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("first_name"), first_name)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("last_name"), last_name)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("nickname"), nickname)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("locale"), locale)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("position"), position)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("props"), props)
        OpenAPI.validate_property(ConvertBotToUserRequest, Symbol("notify_props"), notify_props)
        return new(email, username, password, first_name, last_name, nickname, locale, position, props, notify_props, )
    end
end # type ConvertBotToUserRequest

const _property_types_ConvertBotToUserRequest = Dict{Symbol,String}(Symbol("email")=>"String", Symbol("username")=>"String", Symbol("password")=>"String", Symbol("first_name")=>"String", Symbol("last_name")=>"String", Symbol("nickname")=>"String", Symbol("locale")=>"String", Symbol("position")=>"String", Symbol("props")=>"Any", Symbol("notify_props")=>"UserNotifyProps", )
OpenAPI.property_type(::Type{ ConvertBotToUserRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ConvertBotToUserRequest[name]))}

function check_required(o::ConvertBotToUserRequest)
    true
end

function OpenAPI.validate_property(::Type{ ConvertBotToUserRequest }, name::Symbol, val)
end
