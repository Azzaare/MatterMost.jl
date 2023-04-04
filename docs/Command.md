# Command


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the slash command | [optional] [default to nothing]
**token** | **String** | The token which is used to verify the source of the payload | [optional] [default to nothing]
**create_at** | **Int64** | The time in milliseconds the command was created | [optional] [default to nothing]
**update_at** | **Int64** | The time in milliseconds the command was last updated | [optional] [default to nothing]
**delete_at** | **Int64** | The time in milliseconds the command was deleted, 0 if never deleted | [optional] [default to nothing]
**creator_id** | **String** | The user id for the commands creator | [optional] [default to nothing]
**team_id** | **String** | The team id for which this command is configured | [optional] [default to nothing]
**trigger** | **String** | The string that triggers this command | [optional] [default to nothing]
**method** | **String** | Is the trigger done with HTTP Get (&#39;G&#39;) or HTTP Post (&#39;P&#39;) | [optional] [default to nothing]
**username** | **String** | What is the username for the response post | [optional] [default to nothing]
**icon_url** | **String** | The url to find the icon for this users avatar | [optional] [default to nothing]
**auto_complete** | **Bool** | Use auto complete for this command | [optional] [default to nothing]
**auto_complete_desc** | **String** | The description for this command shown when selecting the command | [optional] [default to nothing]
**auto_complete_hint** | **String** | The hint for this command | [optional] [default to nothing]
**display_name** | **String** | Display name for the command | [optional] [default to nothing]
**description** | **String** | Description for this command | [optional] [default to nothing]
**url** | **String** | The URL that is triggered | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


