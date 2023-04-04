# OpenInteractiveDialogRequestDialog


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callback_id** | **String** | Set an ID that will be included when the dialog is submitted | [optional] [default to nothing]
**title** | **String** | Title of the dialog | [default to nothing]
**introduction_text** | **String** | Markdown formatted introductory paragraph | [optional] [default to nothing]
**elements** | **Vector{Any}** | Input elements, see https://docs.mattermost.com/developer/interactive-dialogs.html#elements | [default to nothing]
**submit_label** | **String** | Label on the submit button | [optional] [default to nothing]
**notify_on_cancel** | **Bool** | Set true to receive payloads when user cancels a dialog | [optional] [default to nothing]
**state** | **String** | Set some state to be echoed back with the dialog submission | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


