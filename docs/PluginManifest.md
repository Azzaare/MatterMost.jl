# PluginManifest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Globally unique identifier that represents the plugin. | [optional] [default to nothing]
**name** | **String** | Name of the plugin. | [optional] [default to nothing]
**description** | **String** | Description of what the plugin is and does. | [optional] [default to nothing]
**version** | **String** | Version number of the plugin. | [optional] [default to nothing]
**min_server_version** | **String** | The minimum Mattermost server version required for the plugin.  Available as server version 5.6.  | [optional] [default to nothing]
**backend** | [***PluginManifestBackend**](PluginManifestBackend.md) |  | [optional] [default to nothing]
**server** | [***PluginManifestServer**](PluginManifestServer.md) |  | [optional] [default to nothing]
**webapp** | [***PluginManifestWebapp**](PluginManifestWebapp.md) |  | [optional] [default to nothing]
**settings_schema** | **Any** | Settings schema used to define the System Console UI for the plugin. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


