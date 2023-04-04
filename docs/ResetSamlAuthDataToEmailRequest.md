# ResetSamlAuthDataToEmailRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_deleted** | **Bool** | Whether to include deleted users. | [optional] [default to false]
**dry_run** | **Bool** | If set to true, the number of users who would be affected is returned. | [optional] [default to false]
**user_ids** | **Vector{String}** | If set to a non-empty array, then users whose IDs are not in the array will be excluded. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


