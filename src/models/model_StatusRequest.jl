# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""status_request

    StatusRequest(;
        message=nothing,
        reminder=nothing,
    )

    - message::String : The status update message.
    - reminder::Float64 : The number of seconds until the system will send a reminder to the owner to update the status. No reminder will be scheduled if reminder is 0 or omitted.
"""
Base.@kwdef mutable struct StatusRequest <: OpenAPI.APIModel
    message::Union{Nothing, String} = nothing
    reminder::Union{Nothing, Float64} = nothing

    function StatusRequest(message, reminder, )
        OpenAPI.validate_property(StatusRequest, Symbol("message"), message)
        OpenAPI.validate_property(StatusRequest, Symbol("reminder"), reminder)
        return new(message, reminder, )
    end
end # type StatusRequest

const _property_types_StatusRequest = Dict{Symbol,String}(Symbol("message")=>"String", Symbol("reminder")=>"Float64", )
OpenAPI.property_type(::Type{ StatusRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_StatusRequest[name]))}

function check_required(o::StatusRequest)
    o.message === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ StatusRequest }, name::Symbol, val)
end