# CreateIncomingWebhookRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel_id** | **String** | The ID of a public channel or private group that receives the webhook payloads. | [default to nothing]
**user_id** | **String** | The ID of the owner of the webhook if different than the requester. Required for [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). | [optional] [default to nothing]
**display_name** | **String** | The display name for this incoming webhook | [optional] [default to nothing]
**description** | **String** | The description for this incoming webhook | [optional] [default to nothing]
**username** | **String** | The username this incoming webhook will post as. | [optional] [default to nothing]
**icon_url** | **String** | The profile picture this incoming webhook will use when posting. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


