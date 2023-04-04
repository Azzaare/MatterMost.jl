# TeamMember


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**team_id** | **String** | The ID of the team this member belongs to. | [optional] [default to nothing]
**user_id** | **String** | The ID of the user this member relates to. | [optional] [default to nothing]
**roles** | **String** | The complete list of roles assigned to this team member, as a space-separated list of role names, including any roles granted implicitly through permissions schemes. | [optional] [default to nothing]
**delete_at** | **Int64** | The time in milliseconds that this team member was deleted. | [optional] [default to nothing]
**scheme_user** | **Bool** | Whether this team member holds the default user role defined by the team&#39;s permissions scheme. | [optional] [default to nothing]
**scheme_admin** | **Bool** | Whether this team member holds the default admin role defined by the team&#39;s permissions scheme. | [optional] [default to nothing]
**explicit_roles** | **String** | The list of roles explicitly assigned to this team member, as a space separated list of role names. This list does *not* include any roles granted implicitly through permissions schemes. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


