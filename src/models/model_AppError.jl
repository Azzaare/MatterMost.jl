# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AppError

    AppError(;
        status_code=nothing,
        id=nothing,
        message=nothing,
        request_id=nothing,
    )

    - status_code::Int64
    - id::String
    - message::String
    - request_id::String
"""
Base.@kwdef mutable struct AppError <: OpenAPI.APIModel
    status_code::Union{Nothing, Int64} = nothing
    id::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing
    request_id::Union{Nothing, String} = nothing

    function AppError(status_code, id, message, request_id, )
        OpenAPI.validate_property(AppError, Symbol("status_code"), status_code)
        OpenAPI.validate_property(AppError, Symbol("id"), id)
        OpenAPI.validate_property(AppError, Symbol("message"), message)
        OpenAPI.validate_property(AppError, Symbol("request_id"), request_id)
        return new(status_code, id, message, request_id, )
    end
end # type AppError

const _property_types_AppError = Dict{Symbol,String}(Symbol("status_code")=>"Int64", Symbol("id")=>"String", Symbol("message")=>"String", Symbol("request_id")=>"String", )
OpenAPI.property_type(::Type{ AppError }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AppError[name]))}

function check_required(o::AppError)
    true
end

function OpenAPI.validate_property(::Type{ AppError }, name::Symbol, val)
end
