# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PatchChannel_request

    PatchChannelRequest(;
        name=nothing,
        display_name=nothing,
        purpose=nothing,
        header=nothing,
    )

    - name::String : The unique handle for the channel, will be present in the channel URL
    - display_name::String : The non-unique UI name for the channel
    - purpose::String : A short description of the purpose of the channel
    - header::String : Markdown-formatted text to display in the header of the channel
"""
Base.@kwdef mutable struct PatchChannelRequest <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    display_name::Union{Nothing, String} = nothing
    purpose::Union{Nothing, String} = nothing
    header::Union{Nothing, String} = nothing

    function PatchChannelRequest(name, display_name, purpose, header, )
        OpenAPI.validate_property(PatchChannelRequest, Symbol("name"), name)
        OpenAPI.validate_property(PatchChannelRequest, Symbol("display_name"), display_name)
        OpenAPI.validate_property(PatchChannelRequest, Symbol("purpose"), purpose)
        OpenAPI.validate_property(PatchChannelRequest, Symbol("header"), header)
        return new(name, display_name, purpose, header, )
    end
end # type PatchChannelRequest

const _property_types_PatchChannelRequest = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("display_name")=>"String", Symbol("purpose")=>"String", Symbol("header")=>"String", )
OpenAPI.property_type(::Type{ PatchChannelRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PatchChannelRequest[name]))}

function check_required(o::PatchChannelRequest)
    true
end

function OpenAPI.validate_property(::Type{ PatchChannelRequest }, name::Symbol, val)
end
