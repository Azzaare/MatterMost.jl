# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RemoteClusterInfo

    RemoteClusterInfo(;
        display_name=nothing,
        create_at=nothing,
        last_ping_at=nothing,
    )

    - display_name::String : The display name for the remote cluster
    - create_at::Int64 : The time in milliseconds a remote cluster was created
    - last_ping_at::Int64 : The time in milliseconds a remote cluster was last pinged successfully
"""
Base.@kwdef mutable struct RemoteClusterInfo <: OpenAPI.APIModel
    display_name::Union{Nothing, String} = nothing
    create_at::Union{Nothing, Int64} = nothing
    last_ping_at::Union{Nothing, Int64} = nothing

    function RemoteClusterInfo(display_name, create_at, last_ping_at, )
        OpenAPI.validate_property(RemoteClusterInfo, Symbol("display_name"), display_name)
        OpenAPI.validate_property(RemoteClusterInfo, Symbol("create_at"), create_at)
        OpenAPI.validate_property(RemoteClusterInfo, Symbol("last_ping_at"), last_ping_at)
        return new(display_name, create_at, last_ping_at, )
    end
end # type RemoteClusterInfo

const _property_types_RemoteClusterInfo = Dict{Symbol,String}(Symbol("display_name")=>"String", Symbol("create_at")=>"Int64", Symbol("last_ping_at")=>"Int64", )
OpenAPI.property_type(::Type{ RemoteClusterInfo }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RemoteClusterInfo[name]))}

function check_required(o::RemoteClusterInfo)
    true
end

function OpenAPI.validate_property(::Type{ RemoteClusterInfo }, name::Symbol, val)
    if name === Symbol("create_at")
        OpenAPI.validate_param(name, "RemoteClusterInfo", :format, val, "int64")
    end
    if name === Symbol("last_ping_at")
        OpenAPI.validate_param(name, "RemoteClusterInfo", :format, val, "int64")
    end
end
