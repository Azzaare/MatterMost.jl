# CreatePostRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel_id** | **String** | The channel ID to post in | [default to nothing]
**message** | **String** | The message contents, can be formatted with Markdown | [default to nothing]
**root_id** | **String** | The post ID to comment on | [optional] [default to nothing]
**file_ids** | **Vector{String}** | A list of file IDs to associate with the post. Note that posts are limited to 5 files maximum. Please use additional posts for more files. | [optional] [default to nothing]
**props** | **Any** | A general JSON property bag to attach to the post | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


