# PluginsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable_plugin**](PluginsApi.md#disable_plugin) | **POST** /plugins/{plugin_id}/disable | Disable plugin
[**enable_plugin**](PluginsApi.md#enable_plugin) | **POST** /plugins/{plugin_id}/enable | Enable plugin
[**get_marketplace_plugins**](PluginsApi.md#get_marketplace_plugins) | **GET** /plugins/marketplace | Gets all the marketplace plugins
[**get_marketplace_visited_by_admin**](PluginsApi.md#get_marketplace_visited_by_admin) | **GET** /plugins/marketplace/first_admin_visit | Get if the Plugin Marketplace has been visited by at least an admin.
[**get_plugin_statuses**](PluginsApi.md#get_plugin_statuses) | **GET** /plugins/statuses | Get plugins status
[**get_plugins**](PluginsApi.md#get_plugins) | **GET** /plugins | Get plugins
[**get_webapp_plugins**](PluginsApi.md#get_webapp_plugins) | **GET** /plugins/webapp | Get webapp plugins
[**install_marketplace_plugin**](PluginsApi.md#install_marketplace_plugin) | **POST** /plugins/marketplace | Installs a marketplace plugin
[**install_plugin_from_url**](PluginsApi.md#install_plugin_from_url) | **POST** /plugins/install_from_url | Install plugin from url
[**remove_plugin**](PluginsApi.md#remove_plugin) | **DELETE** /plugins/{plugin_id} | Remove plugin
[**upload_plugin**](PluginsApi.md#upload_plugin) | **POST** /plugins | Upload plugin


# **disable_plugin**
> disable_plugin(_api::PluginsApi, plugin_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> disable_plugin(_api::PluginsApi, response_stream::Channel, plugin_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Disable plugin

Disable a previously enabled plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 
**plugin_id** | **String**| Id of the plugin to be disabled | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **enable_plugin**
> enable_plugin(_api::PluginsApi, plugin_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> enable_plugin(_api::PluginsApi, response_stream::Channel, plugin_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Enable plugin

Enable a previously uploaded plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 
**plugin_id** | **String**| Id of the plugin to be enabled | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_marketplace_plugins**
> get_marketplace_plugins(_api::PluginsApi; page=nothing, per_page=nothing, filter=nothing, server_version=nothing, local_only=nothing, _mediaType=nothing) -> Vector{MarketplacePlugin}, OpenAPI.Clients.ApiResponse <br/>
> get_marketplace_plugins(_api::PluginsApi, response_stream::Channel; page=nothing, per_page=nothing, filter=nothing, server_version=nothing, local_only=nothing, _mediaType=nothing) -> Channel{ Vector{MarketplacePlugin} }, OpenAPI.Clients.ApiResponse

Gets all the marketplace plugins

Gets all plugins from the marketplace server, merging data from locally installed plugins as well as prepackaged plugins shipped with the server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number to be fetched. (not yet implemented) | [default to nothing]
 **per_page** | **Int64**| Number of item per page. (not yet implemented) | [default to nothing]
 **filter** | **String**| Set to filter plugins by ID, name, or description. | [default to nothing]
 **server_version** | **String**| Set to filter minimum plugin server version. (not yet implemented) | [default to nothing]
 **local_only** | **Bool**| Set true to only retrieve local plugins. | [default to nothing]

### Return type

[**Vector{MarketplacePlugin}**](MarketplacePlugin.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_marketplace_visited_by_admin**
> get_marketplace_visited_by_admin(_api::PluginsApi; _mediaType=nothing) -> System, OpenAPI.Clients.ApiResponse <br/>
> get_marketplace_visited_by_admin(_api::PluginsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ System }, OpenAPI.Clients.ApiResponse

Get if the Plugin Marketplace has been visited by at least an admin.

Retrieves the status that specifies that at least one System Admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**System**](System.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_plugin_statuses**
> get_plugin_statuses(_api::PluginsApi; _mediaType=nothing) -> Vector{PluginStatus}, OpenAPI.Clients.ApiResponse <br/>
> get_plugin_statuses(_api::PluginsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{PluginStatus} }, OpenAPI.Clients.ApiResponse

Get plugins status

Returns the status for plugins installed anywhere in the cluster  ##### Permissions No permissions required.  __Minimum server version__: 4.4 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{PluginStatus}**](PluginStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_plugins**
> get_plugins(_api::PluginsApi; _mediaType=nothing) -> GetPlugins200Response, OpenAPI.Clients.ApiResponse <br/>
> get_plugins(_api::PluginsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ GetPlugins200Response }, OpenAPI.Clients.ApiResponse

Get plugins

Get a list of inactive and a list of active plugin manifests. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**GetPlugins200Response**](GetPlugins200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_webapp_plugins**
> get_webapp_plugins(_api::PluginsApi; _mediaType=nothing) -> Vector{PluginManifestWebapp}, OpenAPI.Clients.ApiResponse <br/>
> get_webapp_plugins(_api::PluginsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{PluginManifestWebapp} }, OpenAPI.Clients.ApiResponse

Get webapp plugins

Get a list of web app plugins installed and activated on the server.  ##### Permissions No permissions required.  __Minimum server version__: 4.4 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{PluginManifestWebapp}**](PluginManifestWebapp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **install_marketplace_plugin**
> install_marketplace_plugin(_api::PluginsApi, install_marketplace_plugin_request::InstallMarketplacePluginRequest; _mediaType=nothing) -> PluginManifest, OpenAPI.Clients.ApiResponse <br/>
> install_marketplace_plugin(_api::PluginsApi, response_stream::Channel, install_marketplace_plugin_request::InstallMarketplacePluginRequest; _mediaType=nothing) -> Channel{ PluginManifest }, OpenAPI.Clients.ApiResponse

Installs a marketplace plugin

Installs a plugin listed in the marketplace server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 
**install_marketplace_plugin_request** | [**InstallMarketplacePluginRequest**](InstallMarketplacePluginRequest.md)| The metadata identifying the plugin to install. | 

### Return type

[**PluginManifest**](PluginManifest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **install_plugin_from_url**
> install_plugin_from_url(_api::PluginsApi, plugin_download_url::String; force=nothing, _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> install_plugin_from_url(_api::PluginsApi, response_stream::Channel, plugin_download_url::String; force=nothing, _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Install plugin from url

Supply a URL to a plugin compressed in a .tar.gz file. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 
**plugin_download_url** | **String**| URL used to download the plugin | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **force** | **String**| Set to &#39;true&#39; to overwrite a previously installed plugin with the same ID, if any | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_plugin**
> remove_plugin(_api::PluginsApi, plugin_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> remove_plugin(_api::PluginsApi, response_stream::Channel, plugin_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove plugin

Remove the plugin with the provided ID from the server. All plugin files are deleted. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 
**plugin_id** | **String**| Id of the plugin to be removed | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_plugin**
> upload_plugin(_api::PluginsApi, plugin::String; force=nothing, _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_plugin(_api::PluginsApi, response_stream::Channel, plugin::String; force=nothing, _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload plugin

Upload a plugin that is contained within a compressed .tar.gz file. Plugins and plugin uploads must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PluginsApi** | API context | 
**plugin** | **String****String**| The plugin image to be uploaded | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **force** | **String**| Set to &#39;true&#39; to overwrite a previously installed plugin with the same ID, if any | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

