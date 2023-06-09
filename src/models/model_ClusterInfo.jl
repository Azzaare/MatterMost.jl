# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ClusterInfo

    ClusterInfo(;
        id=nothing,
        version=nothing,
        config_hash=nothing,
        internode_url=nothing,
        hostname=nothing,
        last_ping=nothing,
        is_alive=nothing,
    )

    - id::String : The unique ID for the node
    - version::String : The server version the node is on
    - config_hash::String : The hash of the configuartion file the node is using
    - internode_url::String : The URL used to communicate with those node from other nodes
    - hostname::String : The hostname for this node
    - last_ping::Int64 : The time of the last ping to this node
    - is_alive::Bool : Whether or not the node is alive and well
"""
Base.@kwdef mutable struct ClusterInfo <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    version::Union{Nothing, String} = nothing
    config_hash::Union{Nothing, String} = nothing
    internode_url::Union{Nothing, String} = nothing
    hostname::Union{Nothing, String} = nothing
    last_ping::Union{Nothing, Int64} = nothing
    is_alive::Union{Nothing, Bool} = nothing

    function ClusterInfo(id, version, config_hash, internode_url, hostname, last_ping, is_alive, )
        OpenAPI.validate_property(ClusterInfo, Symbol("id"), id)
        OpenAPI.validate_property(ClusterInfo, Symbol("version"), version)
        OpenAPI.validate_property(ClusterInfo, Symbol("config_hash"), config_hash)
        OpenAPI.validate_property(ClusterInfo, Symbol("internode_url"), internode_url)
        OpenAPI.validate_property(ClusterInfo, Symbol("hostname"), hostname)
        OpenAPI.validate_property(ClusterInfo, Symbol("last_ping"), last_ping)
        OpenAPI.validate_property(ClusterInfo, Symbol("is_alive"), is_alive)
        return new(id, version, config_hash, internode_url, hostname, last_ping, is_alive, )
    end
end # type ClusterInfo

const _property_types_ClusterInfo = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("version")=>"String", Symbol("config_hash")=>"String", Symbol("internode_url")=>"String", Symbol("hostname")=>"String", Symbol("last_ping")=>"Int64", Symbol("is_alive")=>"Bool", )
OpenAPI.property_type(::Type{ ClusterInfo }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ClusterInfo[name]))}

function check_required(o::ClusterInfo)
    true
end

function OpenAPI.validate_property(::Type{ ClusterInfo }, name::Symbol, val)
end
