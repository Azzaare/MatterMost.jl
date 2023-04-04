# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""FilesLimits

    FilesLimits(;
        total_storage=nothing,
    )

    - total_storage::Int64
"""
Base.@kwdef mutable struct FilesLimits <: OpenAPI.APIModel
    total_storage::Union{Nothing, Int64} = nothing

    function FilesLimits(total_storage, )
        OpenAPI.validate_property(FilesLimits, Symbol("total_storage"), total_storage)
        return new(total_storage, )
    end
end # type FilesLimits

const _property_types_FilesLimits = Dict{Symbol,String}(Symbol("total_storage")=>"Int64", )
OpenAPI.property_type(::Type{ FilesLimits }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_FilesLimits[name]))}

function check_required(o::FilesLimits)
    true
end

function OpenAPI.validate_property(::Type{ FilesLimits }, name::Symbol, val)
    if name === Symbol("total_storage")
        OpenAPI.validate_param(name, "FilesLimits", :format, val, "int64")
    end
end
