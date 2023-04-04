# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UpdateChannel_request

    UpdateChannelRequest(;
        id=nothing,
        name=nothing,
        display_name=nothing,
        purpose=nothing,
        header=nothing,
    )

    - id::String : The channel&#39;s id, not updatable
    - name::String : The unique handle for the channel, will be present in the channel URL
    - display_name::String : The non-unique UI name for the channel
    - purpose::String : A short description of the purpose of the channel
    - header::String : Markdown-formatted text to display in the header of the channel
"""
Base.@kwdef mutable struct UpdateChannelRequest <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    purpose::Union{Nothing, String} = nothing
    header::Union{Nothing, String} = nothing

    function UpdateChannelRequest(id, name, display_name, purpose, header, )
        OpenAPI.validate_property(UpdateChannelRequest, Symbol("id"), id)
        OpenAPI.validate_property(UpdateChannelRequest, Symbol("name"), name)
        OpenAPI.validate_property(UpdateChannelRequest, Symbol("display_name"), display_name)
        OpenAPI.validate_property(UpdateChannelRequest, Symbol("purpose"), purpose)
        OpenAPI.validate_property(UpdateChannelRequest, Symbol("header"), header)
        return new(id, name, display_name, purpose, header, )
    end
end # type UpdateChannelRequest

const _property_types_UpdateChannelRequest = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("name")=>"String", Symbol("display_name")=>"String", Symbol("purpose")=>"String", Symbol("header")=>"String", )
OpenAPI.property_type(::Type{ UpdateChannelRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpdateChannelRequest[name]))}

function check_required(o::UpdateChannelRequest)
    o.id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ UpdateChannelRequest }, name::Symbol, val)
end
