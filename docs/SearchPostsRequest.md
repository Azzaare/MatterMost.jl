# SearchPostsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**terms** | **String** | The search terms as inputed by the user. To search for posts from a user include &#x60;from:someusername&#x60;, using a user&#39;s username. To search in a specific channel include &#x60;in:somechannel&#x60;, using the channel name (not the display name). | [default to nothing]
**is_or_search** | **Bool** | Set to true if an Or search should be performed vs an And search. | [default to nothing]
**time_zone_offset** | **Int64** | Offset from UTC of user timezone for date searches. | [optional] [default to 0]
**include_deleted_channels** | **Bool** | Set to true if deleted channels should be included in the search. (archived channels) | [optional] [default to nothing]
**page** | **Int64** | The page to select. (Only works with Elasticsearch) | [optional] [default to 0]
**per_page** | **Int64** | The number of posts per page. (Only works with Elasticsearch) | [optional] [default to 60]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


