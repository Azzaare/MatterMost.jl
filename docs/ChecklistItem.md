# ChecklistItem


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique, 26 characters long, alphanumeric identifier for the checklist item. | [optional] [default to nothing]
**title** | **String** | The title of the checklist item. | [optional] [default to nothing]
**state** | **String** | The state of the checklist item. An empty string means that the item is not done. | [optional] [default to nothing]
**state_modified** | **Int64** | The timestamp for the latest modification of the item&#39;s state, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the item was never modified. | [optional] [default to nothing]
**assignee_id** | **String** | The identifier of the user that has been assigned to complete this item. If the item has no assignee, this is an empty string. | [optional] [default to nothing]
**assignee_modified** | **Int64** | The timestamp for the latest modification of the item&#39;s assignee, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the item never got an assignee. | [optional] [default to nothing]
**command** | **String** | The slash command associated with this item. If the item has no slash command associated, this is an empty string | [optional] [default to nothing]
**command_last_run** | **Int64** | The timestamp for the latest execution of the item&#39;s command, formatted as the number of milliseconds since the Unix epoch. It equals 0 if the command was never executed. | [optional] [default to nothing]
**description** | **String** | A detailed description of the checklist item, formatted with Markdown. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


