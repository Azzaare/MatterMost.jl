# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PostLog_request

    PostLogRequest(;
        level=nothing,
        message=nothing,
    )

    - level::String : The error level, ERROR or DEBUG
    - message::String : Message to send to the server logs
"""
Base.@kwdef mutable struct PostLogRequest <: OpenAPI.APIModel
    level::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing

    function PostLogRequest(level, message, )
        OpenAPI.validate_property(PostLogRequest, Symbol("level"), level)
        OpenAPI.validate_property(PostLogRequest, Symbol("message"), message)
        return new(level, message, )
    end
end # type PostLogRequest

const _property_types_PostLogRequest = Dict{Symbol,String}(Symbol("level")=>"String", Symbol("message")=>"String", )
OpenAPI.property_type(::Type{ PostLogRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PostLogRequest[name]))}

function check_required(o::PostLogRequest)
    o.level === nothing && (return false)
    o.message === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ PostLogRequest }, name::Symbol, val)
end
