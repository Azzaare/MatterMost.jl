# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UpdateOAuthApp_request

    UpdateOAuthAppRequest(;
        id=nothing,
        name=nothing,
        description=nothing,
        icon_url=nothing,
        callback_urls=nothing,
        homepage=nothing,
        is_trusted=nothing,
    )

    - id::String : The id of the client application
    - name::String : The name of the client application
    - description::String : A short description of the application
    - icon_url::String : A URL to an icon to display with the application
    - callback_urls::Vector{String} : A list of callback URLs for the appliation
    - homepage::String : A link to the website of the application
    - is_trusted::Bool : Set this to &#x60;true&#x60; to skip asking users for permission. It will be set to false if value is not provided.
"""
Base.@kwdef mutable struct UpdateOAuthAppRequest <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    icon_url::Union{Nothing, String} = nothing
    callback_urls::Union{Nothing, Vector{String}} = nothing
    homepage::Union{Nothing, String} = nothing
    is_trusted::Union{Nothing, Bool} = nothing

    function UpdateOAuthAppRequest(id, name, description, icon_url, callback_urls, homepage, is_trusted, )
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("id"), id)
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("name"), name)
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("description"), description)
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("icon_url"), icon_url)
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("callback_urls"), callback_urls)
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("homepage"), homepage)
        OpenAPI.validate_property(UpdateOAuthAppRequest, Symbol("is_trusted"), is_trusted)
        return new(id, name, description, icon_url, callback_urls, homepage, is_trusted, )
    end
end # type UpdateOAuthAppRequest

const _property_types_UpdateOAuthAppRequest = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("name")=>"String", Symbol("description")=>"String", Symbol("icon_url")=>"String", Symbol("callback_urls")=>"Vector{String}", Symbol("homepage")=>"String", Symbol("is_trusted")=>"Bool", )
OpenAPI.property_type(::Type{ UpdateOAuthAppRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpdateOAuthAppRequest[name]))}

function check_required(o::UpdateOAuthAppRequest)
    o.id === nothing && (return false)
    o.name === nothing && (return false)
    o.description === nothing && (return false)
    o.callback_urls === nothing && (return false)
    o.homepage === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ UpdateOAuthAppRequest }, name::Symbol, val)
end
