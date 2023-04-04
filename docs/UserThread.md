# UserThread


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the post that is this thread&#39;s root | [optional] [default to nothing]
**reply_count** | **Int64** | number of replies in this thread | [optional] [default to nothing]
**last_reply_at** | **Int64** | timestamp of the last post to this thread | [optional] [default to nothing]
**last_viewed_at** | **Int64** | timestamp of the last time the user viewed this thread | [optional] [default to nothing]
**participants** | [**Vector{Post}**](Post.md) | list of users participating in this thread. only includes IDs unless &#39;extended&#39; was set to &#39;true&#39; | [optional] [default to nothing]
**post** | [***Post**](Post.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


