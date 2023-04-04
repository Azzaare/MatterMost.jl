# CreatePlaybookRunFromDialogRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [default to nothing]
**url** | **String** |  | [optional] [default to nothing]
**callback_id** | **String** | Callback ID provided by the integration. | [optional] [default to nothing]
**state** | **String** | Stringified JSON with the post_id and the client_id. | [optional] [default to nothing]
**user_id** | **String** | ID of the user who submitted the dialog. | [optional] [default to nothing]
**channel_id** | **String** | ID of the channel the user was in when submitting the dialog. | [optional] [default to nothing]
**team_id** | **String** | ID of the team the user was on when submitting the dialog. | [optional] [default to nothing]
**submission** | [***CreatePlaybookRunFromDialogRequestSubmission**](CreatePlaybookRunFromDialogRequestSubmission.md) |  | [optional] [default to nothing]
**cancelled** | **Bool** | If the dialog was cancelled. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


