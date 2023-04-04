# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""FileInfoList

    FileInfoList(;
        order=nothing,
        file_infos=nothing,
        next_file_id=nothing,
        prev_file_id=nothing,
    )

    - order::Vector{String}
    - file_infos::Dict{String, FileInfo}
    - next_file_id::String : The ID of next file info. Not omitted when empty or not relevant.
    - prev_file_id::String : The ID of previous file info. Not omitted when empty or not relevant.
"""
Base.@kwdef mutable struct FileInfoList <: OpenAPI.APIModel
    order::Union{Nothing, Vector{String}} = nothing
    file_infos::Union{Nothing, Dict} = nothing # spec type: Union{ Nothing, Dict{String, FileInfo} }
    next_file_id::Union{Nothing, String} = nothing
    prev_file_id::Union{Nothing, String} = nothing

    function FileInfoList(order, file_infos, next_file_id, prev_file_id, )
        OpenAPI.validate_property(FileInfoList, Symbol("order"), order)
        OpenAPI.validate_property(FileInfoList, Symbol("file_infos"), file_infos)
        OpenAPI.validate_property(FileInfoList, Symbol("next_file_id"), next_file_id)
        OpenAPI.validate_property(FileInfoList, Symbol("prev_file_id"), prev_file_id)
        return new(order, file_infos, next_file_id, prev_file_id, )
    end
end # type FileInfoList

const _property_types_FileInfoList = Dict{Symbol,String}(Symbol("order")=>"Vector{String}", Symbol("file_infos")=>"Dict{String, FileInfo}", Symbol("next_file_id")=>"String", Symbol("prev_file_id")=>"String", )
OpenAPI.property_type(::Type{ FileInfoList }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_FileInfoList[name]))}

function check_required(o::FileInfoList)
    true
end

function OpenAPI.validate_property(::Type{ FileInfoList }, name::Symbol, val)
end