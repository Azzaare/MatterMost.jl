# SystemStatusResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AndroidLatestVersion** | **String** | Latest Android version supported | [optional] [default to nothing]
**AndroidMinVersion** | **String** | Minimum Android version supported | [optional] [default to nothing]
**DesktopLatestVersion** | **String** | Latest desktop version supported | [optional] [default to nothing]
**DesktopMinVersion** | **String** | Minimum desktop version supported | [optional] [default to nothing]
**IosLatestVersion** | **String** | Latest iOS version supported | [optional] [default to nothing]
**IosMinVersion** | **String** | Minimum iOS version supported | [optional] [default to nothing]
**database_status** | **String** | Status of database (\&quot;OK\&quot; or \&quot;UNHEALTHY\&quot;). Included when get_server_status parameter set. | [optional] [default to nothing]
**filestore_status** | **String** | Status of filestore (\&quot;OK\&quot; or \&quot;UNHEALTHY\&quot;). Included when get_server_status parameter set. | [optional] [default to nothing]
**status** | **String** | Status of server (\&quot;OK\&quot; or \&quot;UNHEALTHY\&quot;). Included when get_server_status parameter set. | [optional] [default to nothing]
**CanReceiveNotifications** | **String** | Whether the device id provided can receive notifications (\&quot;true\&quot;, \&quot;false\&quot; or \&quot;unknown\&quot;). Included when device_id parameter set. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


