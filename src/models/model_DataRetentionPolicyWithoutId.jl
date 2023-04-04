# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DataRetentionPolicyWithoutId

    DataRetentionPolicyWithoutId(;
        display_name=nothing,
        post_duration=nothing,
    )

    - display_name::String : The display name for this retention policy.
    - post_duration::Int64 : The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted). 
"""
Base.@kwdef mutable struct DataRetentionPolicyWithoutId <: OpenAPI.APIModel
    display_name::Union{Nothing, String} = nothing
    post_duration::Union{Nothing, Int64} = nothing

    function DataRetentionPolicyWithoutId(display_name, post_duration, )
        OpenAPI.validate_property(DataRetentionPolicyWithoutId, Symbol("display_name"), display_name)
        OpenAPI.validate_property(DataRetentionPolicyWithoutId, Symbol("post_duration"), post_duration)
        return new(display_name, post_duration, )
    end
end # type DataRetentionPolicyWithoutId

const _property_types_DataRetentionPolicyWithoutId = Dict{Symbol,String}(Symbol("display_name")=>"String", Symbol("post_duration")=>"Int64", )
OpenAPI.property_type(::Type{ DataRetentionPolicyWithoutId }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_DataRetentionPolicyWithoutId[name]))}

function check_required(o::DataRetentionPolicyWithoutId)
    true
end

function OpenAPI.validate_property(::Type{ DataRetentionPolicyWithoutId }, name::Symbol, val)
end