# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""createPlaybookRunFromPost_request

    CreatePlaybookRunFromPostRequest(;
        name=nothing,
        description=nothing,
        owner_user_id=nothing,
        team_id=nothing,
        post_id=nothing,
        playbook_id=nothing,
    )

    - name::String : The name of the playbook run.
    - description::String : The description of the playbook run.
    - owner_user_id::String : The identifier of the user who is commanding the playbook run.
    - team_id::String : The identifier of the team where the playbook run&#39;s channel is in.
    - post_id::String : If the playbook run was created from a post, this field contains the identifier of such post. If not, this field is empty.
    - playbook_id::String : The identifier of the playbook with from which this playbook run was created.
"""
Base.@kwdef mutable struct CreatePlaybookRunFromPostRequest <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    owner_user_id::Union{Nothing, String} = nothing
    team_id::Union{Nothing, String} = nothing
    post_id::Union{Nothing, String} = nothing
    playbook_id::Union{Nothing, String} = nothing

    function CreatePlaybookRunFromPostRequest(name, description, owner_user_id, team_id, post_id, playbook_id, )
        OpenAPI.validate_property(CreatePlaybookRunFromPostRequest, Symbol("name"), name)
        OpenAPI.validate_property(CreatePlaybookRunFromPostRequest, Symbol("description"), description)
        OpenAPI.validate_property(CreatePlaybookRunFromPostRequest, Symbol("owner_user_id"), owner_user_id)
        OpenAPI.validate_property(CreatePlaybookRunFromPostRequest, Symbol("team_id"), team_id)
        OpenAPI.validate_property(CreatePlaybookRunFromPostRequest, Symbol("post_id"), post_id)
        OpenAPI.validate_property(CreatePlaybookRunFromPostRequest, Symbol("playbook_id"), playbook_id)
        return new(name, description, owner_user_id, team_id, post_id, playbook_id, )
    end
end # type CreatePlaybookRunFromPostRequest

const _property_types_CreatePlaybookRunFromPostRequest = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("description")=>"String", Symbol("owner_user_id")=>"String", Symbol("team_id")=>"String", Symbol("post_id")=>"String", Symbol("playbook_id")=>"String", )
OpenAPI.property_type(::Type{ CreatePlaybookRunFromPostRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreatePlaybookRunFromPostRequest[name]))}

function check_required(o::CreatePlaybookRunFromPostRequest)
    o.name === nothing && (return false)
    o.owner_user_id === nothing && (return false)
    o.team_id === nothing && (return false)
    o.playbook_id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreatePlaybookRunFromPostRequest }, name::Symbol, val)
end
