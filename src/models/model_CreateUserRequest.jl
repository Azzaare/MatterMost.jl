# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateUser_request

    CreateUserRequest(;
        email=nothing,
        username=nothing,
        first_name=nothing,
        last_name=nothing,
        nickname=nothing,
        auth_data=nothing,
        auth_service=nothing,
        password=nothing,
        locale=nothing,
        props=nothing,
        notify_props=nothing,
    )

    - email::String
    - username::String
    - first_name::String
    - last_name::String
    - nickname::String
    - auth_data::String : Service-specific authentication data, such as email address.
    - auth_service::String : The authentication service, one of \&quot;email\&quot;, \&quot;gitlab\&quot;, \&quot;ldap\&quot;, \&quot;saml\&quot;, \&quot;office365\&quot;, \&quot;google\&quot;, and \&quot;\&quot;.
    - password::String : The password used for email authentication.
    - locale::String
    - props::Any
    - notify_props::UserNotifyProps
"""
Base.@kwdef mutable struct CreateUserRequest <: OpenAPI.APIModel
    email::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    first_name::Union{Nothing, String} = nothing
    last_name::Union{Nothing, String} = nothing
    nickname::Union{Nothing, String} = nothing
    auth_data::Union{Nothing, String} = nothing
    auth_service::Union{Nothing, String} = nothing
    password::Union{Nothing, String} = nothing
    locale::Union{Nothing, String} = nothing
    props::Union{Nothing, Any} = nothing
    notify_props = nothing # spec type: Union{ Nothing, UserNotifyProps }

    function CreateUserRequest(email, username, first_name, last_name, nickname, auth_data, auth_service, password, locale, props, notify_props, )
        OpenAPI.validate_property(CreateUserRequest, Symbol("email"), email)
        OpenAPI.validate_property(CreateUserRequest, Symbol("username"), username)
        OpenAPI.validate_property(CreateUserRequest, Symbol("first_name"), first_name)
        OpenAPI.validate_property(CreateUserRequest, Symbol("last_name"), last_name)
        OpenAPI.validate_property(CreateUserRequest, Symbol("nickname"), nickname)
        OpenAPI.validate_property(CreateUserRequest, Symbol("auth_data"), auth_data)
        OpenAPI.validate_property(CreateUserRequest, Symbol("auth_service"), auth_service)
        OpenAPI.validate_property(CreateUserRequest, Symbol("password"), password)
        OpenAPI.validate_property(CreateUserRequest, Symbol("locale"), locale)
        OpenAPI.validate_property(CreateUserRequest, Symbol("props"), props)
        OpenAPI.validate_property(CreateUserRequest, Symbol("notify_props"), notify_props)
        return new(email, username, first_name, last_name, nickname, auth_data, auth_service, password, locale, props, notify_props, )
    end
end # type CreateUserRequest

const _property_types_CreateUserRequest = Dict{Symbol,String}(Symbol("email")=>"String", Symbol("username")=>"String", Symbol("first_name")=>"String", Symbol("last_name")=>"String", Symbol("nickname")=>"String", Symbol("auth_data")=>"String", Symbol("auth_service")=>"String", Symbol("password")=>"String", Symbol("locale")=>"String", Symbol("props")=>"Any", Symbol("notify_props")=>"UserNotifyProps", )
OpenAPI.property_type(::Type{ CreateUserRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateUserRequest[name]))}

function check_required(o::CreateUserRequest)
    o.email === nothing && (return false)
    o.username === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateUserRequest }, name::Symbol, val)
end