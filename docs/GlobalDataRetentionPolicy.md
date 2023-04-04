# GlobalDataRetentionPolicy


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_deletion_enabled** | **Bool** | Indicates whether data retention policy deletion of messages is enabled globally. | [optional] [default to nothing]
**file_deletion_enabled** | **Bool** | Indicates whether data retention policy deletion of file attachments is enabled globally. | [optional] [default to nothing]
**message_retention_cutoff** | **Int64** | The current server timestamp before which messages should be deleted. | [optional] [default to nothing]
**file_retention_cutoff** | **Int64** | The current server timestamp before which files should be deleted. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


