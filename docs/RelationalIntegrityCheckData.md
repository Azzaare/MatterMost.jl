# RelationalIntegrityCheckData


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent_name** | **String** | the name of the parent relation (table). | [optional] [default to nothing]
**child_name** | **String** | the name of the child relation (table). | [optional] [default to nothing]
**parent_id_attr** | **String** | the name of the attribute (column) containing the parent id. | [optional] [default to nothing]
**child_id_attr** | **String** | the name of the attribute (column) containing the child id. | [optional] [default to nothing]
**records** | [**Vector{OrphanedRecord}**](OrphanedRecord.md) | the list of orphaned records found. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


