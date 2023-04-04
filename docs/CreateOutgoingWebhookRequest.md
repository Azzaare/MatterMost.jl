# CreateOutgoingWebhookRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**team_id** | **String** | The ID of the team that the webhook watchs | [default to nothing]
**channel_id** | **String** | The ID of a public channel that the webhook watchs | [optional] [default to nothing]
**creator_id** | **String** | The ID of the owner of the webhook if different than the requester. Required in [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). | [optional] [default to nothing]
**description** | **String** | The description for this outgoing webhook | [optional] [default to nothing]
**display_name** | **String** | The display name for this outgoing webhook | [default to nothing]
**trigger_words** | **Vector{String}** | List of words for the webhook to trigger on | [default to nothing]
**trigger_when** | **Int64** | When to trigger the webhook, &#x60;0&#x60; when a trigger word is present at all and &#x60;1&#x60; if the message starts with a trigger word | [optional] [default to nothing]
**callback_urls** | **Vector{String}** | The URLs to POST the payloads to when the webhook is triggered | [default to nothing]
**content_type** | **String** | The format to POST the data in, either &#x60;application/json&#x60; or &#x60;application/x-www-form-urlencoded&#x60; | [optional] [default to "application/x-www-form-urlencoded"]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


