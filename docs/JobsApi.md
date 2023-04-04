# JobsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_job**](JobsApi.md#cancel_job) | **POST** /jobs/{job_id}/cancel | Cancel a job.
[**create_job**](JobsApi.md#create_job) | **POST** /jobs | Create a new job.
[**download_job**](JobsApi.md#download_job) | **GET** /jobs/{job_id}/download | Download the results of a job.
[**get_job**](JobsApi.md#get_job) | **GET** /jobs/{job_id} | Get a job.
[**get_jobs**](JobsApi.md#get_jobs) | **GET** /jobs | Get the jobs.
[**get_jobs_by_type**](JobsApi.md#get_jobs_by_type) | **GET** /jobs/type/{type} | Get the jobs of the given type.


# **cancel_job**
> cancel_job(_api::JobsApi, job_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> cancel_job(_api::JobsApi, response_stream::Channel, job_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Cancel a job.

Cancel a job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 
**job_id** | **String**| Job GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_job**
> create_job(_api::JobsApi, create_job_request::CreateJobRequest; _mediaType=nothing) -> Job, OpenAPI.Clients.ApiResponse <br/>
> create_job(_api::JobsApi, response_stream::Channel, create_job_request::CreateJobRequest; _mediaType=nothing) -> Channel{ Job }, OpenAPI.Clients.ApiResponse

Create a new job.

Create a new job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 
**create_job_request** | [**CreateJobRequest**](CreateJobRequest.md)| Job object to be created | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **download_job**
> download_job(_api::JobsApi, job_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> download_job(_api::JobsApi, response_stream::Channel, job_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Download the results of a job.

Download the result of a single job. __Minimum server version: 5.28__ ##### Permissions Must have `manage_jobs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 
**job_id** | **String**| Job GUID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_job**
> get_job(_api::JobsApi, job_id::String; _mediaType=nothing) -> Job, OpenAPI.Clients.ApiResponse <br/>
> get_job(_api::JobsApi, response_stream::Channel, job_id::String; _mediaType=nothing) -> Channel{ Job }, OpenAPI.Clients.ApiResponse

Get a job.

Gets a single job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 
**job_id** | **String**| Job GUID | [default to nothing]

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_jobs**
> get_jobs(_api::JobsApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Job}, OpenAPI.Clients.ApiResponse <br/>
> get_jobs(_api::JobsApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Job} }, OpenAPI.Clients.ApiResponse

Get the jobs.

Get a page of jobs. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of jobs per page. | [default to 60]

### Return type

[**Vector{Job}**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_jobs_by_type**
> get_jobs_by_type(_api::JobsApi, type::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Job}, OpenAPI.Clients.ApiResponse <br/>
> get_jobs_by_type(_api::JobsApi, response_stream::Channel, type::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Job} }, OpenAPI.Clients.ApiResponse

Get the jobs of the given type.

Get a page of jobs of the given type. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 
**type** | **String**| Job type | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of jobs per page. | [default to 60]

### Return type

[**Vector{Job}**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

