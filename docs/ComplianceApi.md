# ComplianceApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_compliance_report**](ComplianceApi.md#create_compliance_report) | **POST** /compliance/reports | Create report
[**download_compliance_report**](ComplianceApi.md#download_compliance_report) | **GET** /compliance/reports/{report_id}/download | Download a report
[**get_compliance_report**](ComplianceApi.md#get_compliance_report) | **GET** /compliance/reports/{report_id} | Get a report
[**get_compliance_reports**](ComplianceApi.md#get_compliance_reports) | **GET** /compliance/reports | Get reports


# **create_compliance_report**
> create_compliance_report(_api::ComplianceApi; _mediaType=nothing) -> Compliance, OpenAPI.Clients.ApiResponse <br/>
> create_compliance_report(_api::ComplianceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Compliance }, OpenAPI.Clients.ApiResponse

Create report

Create and save a compliance report. ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Compliance**](Compliance.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **download_compliance_report**
> download_compliance_report(_api::ComplianceApi, report_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> download_compliance_report(_api::ComplianceApi, response_stream::Channel, report_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Download a report

Download the full contents of a report as a file. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ComplianceApi** | API context | 
**report_id** | **String**| Compliance report GUID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_compliance_report**
> get_compliance_report(_api::ComplianceApi, report_id::String; _mediaType=nothing) -> Compliance, OpenAPI.Clients.ApiResponse <br/>
> get_compliance_report(_api::ComplianceApi, response_stream::Channel, report_id::String; _mediaType=nothing) -> Channel{ Compliance }, OpenAPI.Clients.ApiResponse

Get a report

Get a compliance reports previously created. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ComplianceApi** | API context | 
**report_id** | **String**| Compliance report GUID | [default to nothing]

### Return type

[**Compliance**](Compliance.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_compliance_reports**
> get_compliance_reports(_api::ComplianceApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Compliance}, OpenAPI.Clients.ApiResponse <br/>
> get_compliance_reports(_api::ComplianceApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Compliance} }, OpenAPI.Clients.ApiResponse

Get reports

Get a list of compliance reports previously created by page, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ComplianceApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of reports per page. | [default to 60]

### Return type

[**Vector{Compliance}**](Compliance.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

