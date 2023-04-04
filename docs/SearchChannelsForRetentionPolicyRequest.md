# SearchChannelsForRetentionPolicyRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **String** | The string to search in the channel name, display name, and purpose. | [optional] [default to nothing]
**team_ids** | **Vector{String}** | Filters results to channels belonging to the given team ids  | [optional] [default to nothing]
**public** | **Bool** | Filters results to only return Public / Open channels, can be used in conjunction with &#x60;private&#x60; to return both &#x60;public&#x60; and &#x60;private&#x60; channels  | [optional] [default to nothing]
**private** | **Bool** | Filters results to only return Private channels, can be used in conjunction with &#x60;public&#x60; to return both &#x60;private&#x60; and &#x60;public&#x60; channels  | [optional] [default to nothing]
**deleted** | **Bool** | Filters results to only return deleted / archived channels  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


