# WebhookOnCreationPayload


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique, 26 characters long, alphanumeric identifier for the playbook run. | [optional] [default to nothing]
**name** | **String** | The name of the playbook run. | [optional] [default to nothing]
**description** | **String** | The description of the playbook run. | [optional] [default to nothing]
**is_active** | **Bool** | True if the playbook run is ongoing; false if the playbook run is ended. | [optional] [default to nothing]
**owner_user_id** | **String** | The identifier of the user that is commanding the playbook run. | [optional] [default to nothing]
**team_id** | **String** | The identifier of the team where the playbook run&#39;s channel is in. | [optional] [default to nothing]
**channel_id** | **String** | The identifier of the playbook run&#39;s channel. | [optional] [default to nothing]
**create_at** | **Int64** | The playbook run creation timestamp, formatted as the number of milliseconds since the Unix epoch. | [optional] [default to nothing]
**end_at** | **Int64** | The playbook run finish timestamp, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the playbook run is not finished. | [optional] [default to nothing]
**delete_at** | **Int64** | The playbook run deletion timestamp, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the playbook run is not deleted. | [optional] [default to nothing]
**active_stage** | **Int64** | Zero-based index of the currently active stage. | [optional] [default to nothing]
**active_stage_title** | **String** | The title of the currently active stage. | [optional] [default to nothing]
**post_id** | **String** | If the playbook run was created from a post, this field contains the identifier of such post. If not, this field is empty. | [optional] [default to nothing]
**playbook_id** | **String** | The identifier of the playbook with from which this playbook run was created. | [optional] [default to nothing]
**checklists** | [**Vector{Checklist}**](Checklist.md) |  | [optional] [default to nothing]
**channel_url** | **String** | Absolute URL to the playbook run&#39;s channel. | [optional] [default to nothing]
**details_url** | **String** | Absolute URL to the playbook run&#39;s details. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


