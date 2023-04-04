# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PluginStatus

    PluginStatus(;
        plugin_id=nothing,
        name=nothing,
        description=nothing,
        version=nothing,
        cluster_id=nothing,
        plugin_path=nothing,
        state=nothing,
    )

    - plugin_id::String : Globally unique identifier that represents the plugin.
    - name::String : Name of the plugin.
    - description::String : Description of what the plugin is and does.
    - version::String : Version number of the plugin.
    - cluster_id::String : ID of the cluster in which plugin is running
    - plugin_path::String : Path to the plugin on the server
    - state::Float64 : State of the plugin
"""
Base.@kwdef mutable struct PluginStatus <: OpenAPI.APIModel
    plugin_id::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    version::Union{Nothing, String} = nothing
    cluster_id::Union{Nothing, String} = nothing
    plugin_path::Union{Nothing, String} = nothing
    state::Union{Nothing, Float64} = nothing

    function PluginStatus(plugin_id, name, description, version, cluster_id, plugin_path, state, )
        OpenAPI.validate_property(PluginStatus, Symbol("plugin_id"), plugin_id)
        OpenAPI.validate_property(PluginStatus, Symbol("name"), name)
        OpenAPI.validate_property(PluginStatus, Symbol("description"), description)
        OpenAPI.validate_property(PluginStatus, Symbol("version"), version)
        OpenAPI.validate_property(PluginStatus, Symbol("cluster_id"), cluster_id)
        OpenAPI.validate_property(PluginStatus, Symbol("plugin_path"), plugin_path)
        OpenAPI.validate_property(PluginStatus, Symbol("state"), state)
        return new(plugin_id, name, description, version, cluster_id, plugin_path, state, )
    end
end # type PluginStatus

const _property_types_PluginStatus = Dict{Symbol,String}(Symbol("plugin_id")=>"String", Symbol("name")=>"String", Symbol("description")=>"String", Symbol("version")=>"String", Symbol("cluster_id")=>"String", Symbol("plugin_path")=>"String", Symbol("state")=>"Float64", )
OpenAPI.property_type(::Type{ PluginStatus }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PluginStatus[name]))}

function check_required(o::PluginStatus)
    true
end

function OpenAPI.validate_property(::Type{ PluginStatus }, name::Symbol, val)
    if name === Symbol("state")
        OpenAPI.validate_param(name, "PluginStatus", :enum, val, ["null", "null", "null", "null", "null", "null"])
    end
end