# ElasticsearchApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**purge_elasticsearch_indexes**](ElasticsearchApi.md#purge_elasticsearch_indexes) | **POST** /elasticsearch/purge_indexes | Purge all Elasticsearch indexes
[**test_elasticsearch**](ElasticsearchApi.md#test_elasticsearch) | **POST** /elasticsearch/test | Test Elasticsearch configuration


# **purge_elasticsearch_indexes**
> purge_elasticsearch_indexes(_api::ElasticsearchApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> purge_elasticsearch_indexes(_api::ElasticsearchApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Purge all Elasticsearch indexes

Deletes all Elasticsearch indexes and their contents. After calling this endpoint, it is necessary to schedule a new Elasticsearch indexing job to repopulate the indexes. __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **test_elasticsearch**
> test_elasticsearch(_api::ElasticsearchApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> test_elasticsearch(_api::ElasticsearchApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Test Elasticsearch configuration

Test the current Elasticsearch configuration to see if the Elasticsearch server can be contacted successfully. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested.  __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

