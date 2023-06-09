# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""nextStageDialog_request

    NextStageDialogRequest(;
        state=nothing,
    )

    - state::String : String representation of the zero-based index of the stage to go to.
"""
Base.@kwdef mutable struct NextStageDialogRequest <: OpenAPI.APIModel
    state::Union{Nothing, String} = nothing

    function NextStageDialogRequest(state, )
        OpenAPI.validate_property(NextStageDialogRequest, Symbol("state"), state)
        return new(state, )
    end
end # type NextStageDialogRequest

const _property_types_NextStageDialogRequest = Dict{Symbol,String}(Symbol("state")=>"String", )
OpenAPI.property_type(::Type{ NextStageDialogRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_NextStageDialogRequest[name]))}

function check_required(o::NextStageDialogRequest)
    true
end

function OpenAPI.validate_property(::Type{ NextStageDialogRequest }, name::Symbol, val)
end
