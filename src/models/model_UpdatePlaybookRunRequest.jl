# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""updatePlaybookRun_request

    UpdatePlaybookRunRequest(;
        active_stage=nothing,
    )

    - active_stage::Int64 : Zero-based index of the stage that will be made active.
"""
Base.@kwdef mutable struct UpdatePlaybookRunRequest <: OpenAPI.APIModel
    active_stage::Union{Nothing, Int64} = nothing

    function UpdatePlaybookRunRequest(active_stage, )
        OpenAPI.validate_property(UpdatePlaybookRunRequest, Symbol("active_stage"), active_stage)
        return new(active_stage, )
    end
end # type UpdatePlaybookRunRequest

const _property_types_UpdatePlaybookRunRequest = Dict{Symbol,String}(Symbol("active_stage")=>"Int64", )
OpenAPI.property_type(::Type{ UpdatePlaybookRunRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpdatePlaybookRunRequest[name]))}

function check_required(o::UpdatePlaybookRunRequest)
    true
end

function OpenAPI.validate_property(::Type{ UpdatePlaybookRunRequest }, name::Symbol, val)
end