# Playbook


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique, 26 characters long, alphanumeric identifier for the playbook. | [optional] [default to nothing]
**title** | **String** | The title of the playbook. | [optional] [default to nothing]
**description** | **String** | The description of the playbook. | [optional] [default to nothing]
**team_id** | **String** | The identifier of the team where the playbook is in. | [optional] [default to nothing]
**create_public_playbook_run** | **Bool** | A boolean indicating whether the playbook runs created from this playbook should be public or private. | [optional] [default to nothing]
**create_at** | **Int64** | The playbook creation timestamp, formatted as the number of milliseconds since the Unix epoch. | [optional] [default to nothing]
**delete_at** | **Int64** | The playbook deletion timestamp, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the playbook is not deleted. | [optional] [default to nothing]
**num_stages** | **Int64** | The number of stages defined in this playbook. | [optional] [default to nothing]
**num_steps** | **Int64** | The total number of steps from all the stages defined in this playbook. | [optional] [default to nothing]
**checklists** | [**Vector{Checklist}**](Checklist.md) | The stages defined in this playbook. | [optional] [default to nothing]
**member_ids** | **Vector{String}** | The identifiers of all the users that are members of this playbook. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


