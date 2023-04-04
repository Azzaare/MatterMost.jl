# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DataRetentionPolicyForTeam

    DataRetentionPolicyForTeam(;
        team_id=nothing,
        post_duration=nothing,
    )

    - team_id::String : The team ID.
    - post_duration::Int64 : The number of days a message will be retained before being deleted by this policy.
"""
Base.@kwdef mutable struct DataRetentionPolicyForTeam <: OpenAPI.APIModel
    team_id::Union{Nothing, String} = nothing
    post_duration::Union{Nothing, Int64} = nothing

    function DataRetentionPolicyForTeam(team_id, post_duration, )
        OpenAPI.validate_property(DataRetentionPolicyForTeam, Symbol("team_id"), team_id)
        OpenAPI.validate_property(DataRetentionPolicyForTeam, Symbol("post_duration"), post_duration)
        return new(team_id, post_duration, )
    end
end # type DataRetentionPolicyForTeam

const _property_types_DataRetentionPolicyForTeam = Dict{Symbol,String}(Symbol("team_id")=>"String", Symbol("post_duration")=>"Int64", )
OpenAPI.property_type(::Type{ DataRetentionPolicyForTeam }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_DataRetentionPolicyForTeam[name]))}

function check_required(o::DataRetentionPolicyForTeam)
    true
end

function OpenAPI.validate_property(::Type{ DataRetentionPolicyForTeam }, name::Symbol, val)
end