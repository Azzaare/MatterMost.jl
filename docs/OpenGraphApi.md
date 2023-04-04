# OpenGraphApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**open_graph**](OpenGraphApi.md#open_graph) | **POST** /opengraph | Get open graph metadata for url


# **open_graph**
> open_graph(_api::OpenGraphApi, open_graph_request::OpenGraphRequest; _mediaType=nothing) -> OpenGraph, OpenAPI.Clients.ApiResponse <br/>
> open_graph(_api::OpenGraphApi, response_stream::Channel, open_graph_request::OpenGraphRequest; _mediaType=nothing) -> Channel{ OpenGraph }, OpenAPI.Clients.ApiResponse

Get open graph metadata for url

Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OpenGraphApi** | API context | 
**open_graph_request** | [**OpenGraphRequest**](OpenGraphRequest.md)|  | 

### Return type

[**OpenGraph**](OpenGraph.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

