# Role


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the role. | [optional] [default to nothing]
**name** | **String** | The unique name of the role, used when assigning roles to users/groups in contexts. | [optional] [default to nothing]
**display_name** | **String** | The human readable name for the role. | [optional] [default to nothing]
**description** | **String** | A human readable description of the role. | [optional] [default to nothing]
**permissions** | **Vector{String}** | A list of the unique names of the permissions this role grants. | [optional] [default to nothing]
**scheme_managed** | **Bool** | indicates if this role is managed by a scheme (true), or is a custom stand-alone role (false). | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


