# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChecklistItem

    ChecklistItem(;
        id=nothing,
        title=nothing,
        state=nothing,
        state_modified=nothing,
        assignee_id=nothing,
        assignee_modified=nothing,
        command=nothing,
        command_last_run=nothing,
        description=nothing,
    )

    - id::String : A unique, 26 characters long, alphanumeric identifier for the checklist item.
    - title::String : The title of the checklist item.
    - state::String : The state of the checklist item. An empty string means that the item is not done.
    - state_modified::Int64 : The timestamp for the latest modification of the item&#39;s state, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the item was never modified.
    - assignee_id::String : The identifier of the user that has been assigned to complete this item. If the item has no assignee, this is an empty string.
    - assignee_modified::Int64 : The timestamp for the latest modification of the item&#39;s assignee, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the item never got an assignee.
    - command::String : The slash command associated with this item. If the item has no slash command associated, this is an empty string
    - command_last_run::Int64 : The timestamp for the latest execution of the item&#39;s command, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the command was never executed.
    - description::String : A detailed description of the checklist item, formatted with Markdown.
"""
Base.@kwdef mutable struct ChecklistItem <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    title::Union{Nothing, String} = nothing
    state::Union{Nothing, String} = nothing
    state_modified::Union{Nothing, Int64} = nothing
    assignee_id::Union{Nothing, String} = nothing
    assignee_modified::Union{Nothing, Int64} = nothing
    command::Union{Nothing, String} = nothing
    command_last_run::Union{Nothing, Int64} = nothing
    description::Union{Nothing, String} = nothing

    function ChecklistItem(id, title, state, state_modified, assignee_id, assignee_modified, command, command_last_run, description, )
        OpenAPI.validate_property(ChecklistItem, Symbol("id"), id)
        OpenAPI.validate_property(ChecklistItem, Symbol("title"), title)
        OpenAPI.validate_property(ChecklistItem, Symbol("state"), state)
        OpenAPI.validate_property(ChecklistItem, Symbol("state_modified"), state_modified)
        OpenAPI.validate_property(ChecklistItem, Symbol("assignee_id"), assignee_id)
        OpenAPI.validate_property(ChecklistItem, Symbol("assignee_modified"), assignee_modified)
        OpenAPI.validate_property(ChecklistItem, Symbol("command"), command)
        OpenAPI.validate_property(ChecklistItem, Symbol("command_last_run"), command_last_run)
        OpenAPI.validate_property(ChecklistItem, Symbol("description"), description)
        return new(id, title, state, state_modified, assignee_id, assignee_modified, command, command_last_run, description, )
    end
end # type ChecklistItem

const _property_types_ChecklistItem = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("title")=>"String", Symbol("state")=>"String", Symbol("state_modified")=>"Int64", Symbol("assignee_id")=>"String", Symbol("assignee_modified")=>"Int64", Symbol("command")=>"String", Symbol("command_last_run")=>"Int64", Symbol("description")=>"String", )
OpenAPI.property_type(::Type{ ChecklistItem }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChecklistItem[name]))}

function check_required(o::ChecklistItem)
    true
end

function OpenAPI.validate_property(::Type{ ChecklistItem }, name::Symbol, val)
    if name === Symbol("state")
        OpenAPI.validate_param(name, "ChecklistItem", :enum, val, ["", "in_progress", "closed"])
    end
    if name === Symbol("state_modified")
        OpenAPI.validate_param(name, "ChecklistItem", :format, val, "int64")
    end
    if name === Symbol("assignee_modified")
        OpenAPI.validate_param(name, "ChecklistItem", :format, val, "int64")
    end
    if name === Symbol("command_last_run")
        OpenAPI.validate_param(name, "ChecklistItem", :format, val, "int64")
    end
end
