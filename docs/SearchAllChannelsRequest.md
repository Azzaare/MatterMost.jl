# SearchAllChannelsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **String** | The string to search in the channel name, display name, and purpose. | [default to nothing]
**not_associated_to_group** | **String** | A group id to exclude channels that are associated to that group via GroupChannel records. | [optional] [default to nothing]
**exclude_default_channels** | **Bool** | Exclude default channels from the results by setting this parameter to true. | [optional] [default to nothing]
**team_ids** | **Vector{String}** | Filters results to channels belonging to the given team ids  __Minimum server version__: 5.26  | [optional] [default to nothing]
**group_constrained** | **Bool** | Filters results to only return channels constrained to a group  __Minimum server version__: 5.26  | [optional] [default to nothing]
**exclude_group_constrained** | **Bool** | Filters results to exclude channels constrained to a group  __Minimum server version__: 5.26  | [optional] [default to nothing]
**public** | **Bool** | Filters results to only return Public / Open channels, can be used in conjunction with &#x60;private&#x60; to return both &#x60;public&#x60; and &#x60;private&#x60; channels  __Minimum server version__: 5.26  | [optional] [default to nothing]
**private** | **Bool** | Filters results to only return Private channels, can be used in conjunction with &#x60;public&#x60; to return both &#x60;private&#x60; and &#x60;public&#x60; channels  __Minimum server version__: 5.26  | [optional] [default to nothing]
**deleted** | **Bool** | Filters results to only return deleted / archived channels  __Minimum server version__: 5.26  | [optional] [default to nothing]
**page** | **String** | The page number to return, if paginated. If this parameter is not present with the &#x60;per_page&#x60; parameter then the results will be returned un-paged. | [optional] [default to nothing]
**per_page** | **String** | The number of entries to return per page, if paginated. If this parameter is not present with the &#x60;page&#x60; parameter then the results will be returned un-paged. | [optional] [default to nothing]
**exclude_policy_constrained** | **Bool** | If set to true, only channels which do not have a granular retention policy assigned to them will be returned. The &#x60;sysconsole_read_compliance_data_retention&#x60; permission is required to use this parameter. __Minimum server version__: 5.35  | [optional] [default to false]
**include_search_by_id** | **Bool** | If set to true, returns channels where given search &#39;term&#39; matches channel ID. __Minimum server version__: 5.35  | [optional] [default to false]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


