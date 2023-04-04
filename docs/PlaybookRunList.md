# PlaybookRunList


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_count** | **Int64** | The total number of playbook runs in the list, regardless of the paging. | [optional] [default to nothing]
**page_count** | **Int64** | The total number of pages. This depends on the total number of playbook runs in the database and the per_page parameter sent with the request. | [optional] [default to nothing]
**has_more** | **Bool** | A boolean describing whether there are more pages after the currently returned. | [optional] [default to nothing]
**items** | [**Vector{PlaybookRun}**](PlaybookRun.md) | The playbook runs in this page. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


