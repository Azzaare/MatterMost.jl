# CloudApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_customer_payment**](CloudApi.md#confirm_customer_payment) | **POST** /cloud/payment/confirm | Completes the payment setup intent
[**create_customer_payment**](CloudApi.md#create_customer_payment) | **POST** /cloud/payment | Create a customer setup payment intent
[**get_cloud_customer**](CloudApi.md#get_cloud_customer) | **GET** /cloud/customer | Get cloud customer
[**get_cloud_limits**](CloudApi.md#get_cloud_limits) | **GET** /cloud/limits | Get cloud workspace limits
[**get_cloud_products**](CloudApi.md#get_cloud_products) | **GET** /cloud/products | Get cloud products
[**get_invoice_for_subscription_as_pdf**](CloudApi.md#get_invoice_for_subscription_as_pdf) | **GET** /cloud/subscription/invoices/{invoice_id}/pdf | Get cloud invoice PDF
[**get_invoices_for_subscription**](CloudApi.md#get_invoices_for_subscription) | **GET** /cloud/subscription/invoices | Get cloud subscription invoices
[**get_subscription**](CloudApi.md#get_subscription) | **GET** /cloud/subscription | Get cloud subscription
[**post_endpoint_for_cws_webhooks**](CloudApi.md#post_endpoint_for_cws_webhooks) | **POST** /cloud/webhook | POST endpoint for CWS Webhooks
[**update_cloud_customer**](CloudApi.md#update_cloud_customer) | **PUT** /cloud/customer | Update cloud customer
[**update_cloud_customer_address**](CloudApi.md#update_cloud_customer_address) | **PUT** /cloud/customer/address | Update cloud customer address


# **confirm_customer_payment**
> confirm_customer_payment(_api::CloudApi; stripe_setup_intent_id=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> confirm_customer_payment(_api::CloudApi, response_stream::Channel; stripe_setup_intent_id=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Completes the payment setup intent

Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CloudApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripe_setup_intent_id** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_customer_payment**
> create_customer_payment(_api::CloudApi; _mediaType=nothing) -> PaymentSetupIntent, OpenAPI.Clients.ApiResponse <br/>
> create_customer_payment(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ PaymentSetupIntent }, OpenAPI.Clients.ApiResponse

Create a customer setup payment intent

Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**PaymentSetupIntent**](PaymentSetupIntent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_cloud_customer**
> get_cloud_customer(_api::CloudApi; _mediaType=nothing) -> CloudCustomer, OpenAPI.Clients.ApiResponse <br/>
> get_cloud_customer(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ CloudCustomer }, OpenAPI.Clients.ApiResponse

Get cloud customer

Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**CloudCustomer**](CloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_cloud_limits**
> get_cloud_limits(_api::CloudApi; _mediaType=nothing) -> ProductLimits, OpenAPI.Clients.ApiResponse <br/>
> get_cloud_limits(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ProductLimits }, OpenAPI.Clients.ApiResponse

Get cloud workspace limits

Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ProductLimits**](ProductLimits.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_cloud_products**
> get_cloud_products(_api::CloudApi; _mediaType=nothing) -> Vector{Product}, OpenAPI.Clients.ApiResponse <br/>
> get_cloud_products(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{Product} }, OpenAPI.Clients.ApiResponse

Get cloud products

Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{Product}**](Product.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_invoice_for_subscription_as_pdf**
> get_invoice_for_subscription_as_pdf(_api::CloudApi, invoice_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_invoice_for_subscription_as_pdf(_api::CloudApi, response_stream::Channel, invoice_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get cloud invoice PDF

Retrieves the PDF for the invoice passed as parameter ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CloudApi** | API context | 
**invoice_id** | **String**| Invoice ID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_invoices_for_subscription**
> get_invoices_for_subscription(_api::CloudApi; _mediaType=nothing) -> Vector{Invoice}, OpenAPI.Clients.ApiResponse <br/>
> get_invoices_for_subscription(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{Invoice} }, OpenAPI.Clients.ApiResponse

Get cloud subscription invoices

Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{Invoice}**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_subscription**
> get_subscription(_api::CloudApi; _mediaType=nothing) -> Subscription, OpenAPI.Clients.ApiResponse <br/>
> get_subscription(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Subscription }, OpenAPI.Clients.ApiResponse

Get cloud subscription

Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_endpoint_for_cws_webhooks**
> post_endpoint_for_cws_webhooks(_api::CloudApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_endpoint_for_cws_webhooks(_api::CloudApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

POST endpoint for CWS Webhooks

An endpoint for processing webhooks from the Customer Portal ##### Permissions This endpoint should only be accessed by CWS, in a Mattermost Cloud instance __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_cloud_customer**
> update_cloud_customer(_api::CloudApi, update_cloud_customer_request::UpdateCloudCustomerRequest; _mediaType=nothing) -> CloudCustomer, OpenAPI.Clients.ApiResponse <br/>
> update_cloud_customer(_api::CloudApi, response_stream::Channel, update_cloud_customer_request::UpdateCloudCustomerRequest; _mediaType=nothing) -> Channel{ CloudCustomer }, OpenAPI.Clients.ApiResponse

Update cloud customer

Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CloudApi** | API context | 
**update_cloud_customer_request** | [**UpdateCloudCustomerRequest**](UpdateCloudCustomerRequest.md)| Customer patch including information to update | 

### Return type

[**CloudCustomer**](CloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_cloud_customer_address**
> update_cloud_customer_address(_api::CloudApi, address::Address; _mediaType=nothing) -> CloudCustomer, OpenAPI.Clients.ApiResponse <br/>
> update_cloud_customer_address(_api::CloudApi, response_stream::Channel, address::Address; _mediaType=nothing) -> Channel{ CloudCustomer }, OpenAPI.Clients.ApiResponse

Update cloud customer address

Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CloudApi** | API context | 
**address** | [**Address**](Address.md)| Company address information to update | 

### Return type

[**CloudCustomer**](CloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

