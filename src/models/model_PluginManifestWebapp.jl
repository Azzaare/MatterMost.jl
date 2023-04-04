# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PluginManifest_webapp

    PluginManifestWebapp(;
        bundle_path=nothing,
    )

    - bundle_path::String : Path to the webapp JavaScript bundle.
"""
Base.@kwdef mutable struct PluginManifestWebapp <: OpenAPI.APIModel
    bundle_path::Union{Nothing, String} = nothing

    function PluginManifestWebapp(bundle_path, )
        OpenAPI.validate_property(PluginManifestWebapp, Symbol("bundle_path"), bundle_path)
        return new(bundle_path, )
    end
end # type PluginManifestWebapp

const _property_types_PluginManifestWebapp = Dict{Symbol,String}(Symbol("bundle_path")=>"String", )
OpenAPI.property_type(::Type{ PluginManifestWebapp }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PluginManifestWebapp[name]))}

function check_required(o::PluginManifestWebapp)
    true
end

function OpenAPI.validate_property(::Type{ PluginManifestWebapp }, name::Symbol, val)
end
