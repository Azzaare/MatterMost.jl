# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateScheme_request

    CreateSchemeRequest(;
        name=nothing,
        description=nothing,
        scope=nothing,
    )

    - name::String : The name of the scheme
    - description::String : The description of the scheme
    - scope::String : The scope of the scheme (\&quot;team\&quot; or \&quot;channel\&quot;)
"""
Base.@kwdef mutable struct CreateSchemeRequest <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    scope::Union{Nothing, String} = nothing

    function CreateSchemeRequest(name, description, scope, )
        OpenAPI.validate_property(CreateSchemeRequest, Symbol("name"), name)
        OpenAPI.validate_property(CreateSchemeRequest, Symbol("description"), description)
        OpenAPI.validate_property(CreateSchemeRequest, Symbol("scope"), scope)
        return new(name, description, scope, )
    end
end # type CreateSchemeRequest

const _property_types_CreateSchemeRequest = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("description")=>"String", Symbol("scope")=>"String", )
OpenAPI.property_type(::Type{ CreateSchemeRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateSchemeRequest[name]))}

function check_required(o::CreateSchemeRequest)
    o.name === nothing && (return false)
    o.scope === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateSchemeRequest }, name::Symbol, val)
end
