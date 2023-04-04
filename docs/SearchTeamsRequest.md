# SearchTeamsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **String** | The search term to match against the name or display name of teams | [optional] [default to nothing]
**page** | **String** | The page number to return, if paginated. If this parameter is not present with the &#x60;per_page&#x60; parameter then the results will be returned un-paged. | [optional] [default to nothing]
**per_page** | **String** | The number of entries to return per page, if paginated. If this parameter is not present with the &#x60;page&#x60; parameter then the results will be returned un-paged. | [optional] [default to nothing]
**allow_open_invite** | **Bool** | Filters results to teams where &#x60;allow_open_invite&#x60; is set to true or false, excludes group constrained channels if this filter option is passed. If this filter option is not passed then the query will remain unchanged. __Minimum server version__: 5.28  | [optional] [default to nothing]
**group_constrained** | **Bool** | Filters results to teams where &#x60;group_constrained&#x60; is set to true or false, returns the union of results when used with &#x60;allow_open_invite&#x60; If the filter option is not passed then the query will remain unchanged. __Minimum server version__: 5.28  | [optional] [default to nothing]
**exclude_policy_constrained** | **Bool** | If set to true, only teams which do not have a granular retention policy assigned to them will be returned. The &#x60;sysconsole_read_compliance_data_retention&#x60; permission is required to use this parameter. __Minimum server version__: 5.35  | [optional] [default to false]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


