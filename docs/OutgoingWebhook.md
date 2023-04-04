# OutgoingWebhook


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this outgoing webhook | [optional] [default to nothing]
**create_at** | **Int64** | The time in milliseconds a outgoing webhook was created | [optional] [default to nothing]
**update_at** | **Int64** | The time in milliseconds a outgoing webhook was last updated | [optional] [default to nothing]
**delete_at** | **Int64** | The time in milliseconds a outgoing webhook was deleted | [optional] [default to nothing]
**creator_id** | **String** | The Id of the user who created the webhook | [optional] [default to nothing]
**team_id** | **String** | The ID of the team that the webhook watchs | [optional] [default to nothing]
**channel_id** | **String** | The ID of a public channel that the webhook watchs | [optional] [default to nothing]
**description** | **String** | The description for this outgoing webhook | [optional] [default to nothing]
**display_name** | **String** | The display name for this outgoing webhook | [optional] [default to nothing]
**trigger_words** | **Vector{String}** | List of words for the webhook to trigger on | [optional] [default to nothing]
**trigger_when** | **Int64** | When to trigger the webhook, &#x60;0&#x60; when a trigger word is present at all and &#x60;1&#x60; if the message starts with a trigger word | [optional] [default to nothing]
**callback_urls** | **Vector{String}** | The URLs to POST the payloads to when the webhook is triggered | [optional] [default to nothing]
**content_type** | **String** | The format to POST the data in, either &#x60;application/json&#x60; or &#x60;application/x-www-form-urlencoded&#x60; | [optional] [default to "application/x-www-form-urlencoded"]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


