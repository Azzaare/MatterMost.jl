# LDAPApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_ldap_private_certificate**](LDAPApi.md#delete_ldap_private_certificate) | **DELETE** /ldap/certificate/private | Remove private key
[**delete_ldap_public_certificate**](LDAPApi.md#delete_ldap_public_certificate) | **DELETE** /ldap/certificate/public | Remove public certificate
[**get_ldap_groups**](LDAPApi.md#get_ldap_groups) | **GET** /ldap/groups | Returns a list of LDAP groups
[**link_ldap_group**](LDAPApi.md#link_ldap_group) | **POST** /ldap/groups/{remote_id}/link | Link a LDAP group
[**migrate_auth_to_ldap**](LDAPApi.md#migrate_auth_to_ldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrate_id_ldap**](LDAPApi.md#migrate_id_ldap) | **POST** /ldap/migrateid | Migrate Id LDAP
[**sync_ldap**](LDAPApi.md#sync_ldap) | **POST** /ldap/sync | Sync with LDAP
[**test_ldap**](LDAPApi.md#test_ldap) | **POST** /ldap/test | Test LDAP configuration
[**upload_ldap_private_certificate**](LDAPApi.md#upload_ldap_private_certificate) | **POST** /ldap/certificate/private | Upload private key
[**upload_ldap_public_certificate**](LDAPApi.md#upload_ldap_public_certificate) | **POST** /ldap/certificate/public | Upload public certificate


# **delete_ldap_private_certificate**
> delete_ldap_private_certificate(_api::LDAPApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_ldap_private_certificate(_api::LDAPApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove private key

Delete the current private key being used with your TLS verification. ##### Permissions Must have `manage_system` permission. 

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

# **delete_ldap_public_certificate**
> delete_ldap_public_certificate(_api::LDAPApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_ldap_public_certificate(_api::LDAPApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove public certificate

Delete the current public certificate being used for TLS verification. ##### Permissions Must have `manage_system` permission. 

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

# **get_ldap_groups**
> get_ldap_groups(_api::LDAPApi; q=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{LDAPGroupsPaged}, OpenAPI.Clients.ApiResponse <br/>
> get_ldap_groups(_api::LDAPApi, response_stream::Channel; q=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{LDAPGroupsPaged} }, OpenAPI.Clients.ApiResponse

Returns a list of LDAP groups

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **LDAPApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search term | [default to nothing]
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of users per page. There is a maximum limit of 200 users per page. | [default to 60]

### Return type

[**Vector{LDAPGroupsPaged}**](LDAPGroupsPaged.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **link_ldap_group**
> link_ldap_group(_api::LDAPApi, remote_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> link_ldap_group(_api::LDAPApi, response_stream::Channel, remote_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Link a LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **LDAPApi** | API context | 
**remote_id** | **String**| Group GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **migrate_auth_to_ldap**
> migrate_auth_to_ldap(_api::LDAPApi; migrate_auth_to_ldap_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> migrate_auth_to_ldap(_api::LDAPApi, response_stream::Channel; migrate_auth_to_ldap_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **LDAPApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrate_auth_to_ldap_request** | [**MigrateAuthToLdapRequest**](MigrateAuthToLdapRequest.md)|  | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **migrate_id_ldap**
> migrate_id_ldap(_api::LDAPApi, migrate_id_ldap_request::MigrateIdLdapRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> migrate_id_ldap(_api::LDAPApi, response_stream::Channel, migrate_id_ldap_request::MigrateIdLdapRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Migrate Id LDAP

Migrate LDAP IdAttribute to new value. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.26 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **LDAPApi** | API context | 
**migrate_id_ldap_request** | [**MigrateIdLdapRequest**](MigrateIdLdapRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **sync_ldap**
> sync_ldap(_api::LDAPApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> sync_ldap(_api::LDAPApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Sync with LDAP

Synchronize any user attribute changes in the configured AD/LDAP server with Mattermost. ##### Permissions Must have `manage_system` permission. 

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

# **test_ldap**
> test_ldap(_api::LDAPApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> test_ldap(_api::LDAPApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Test LDAP configuration

Test the current AD/LDAP configuration to see if the AD/LDAP server can be contacted successfully. ##### Permissions Must have `manage_system` permission. 

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

# **upload_ldap_private_certificate**
> upload_ldap_private_certificate(_api::LDAPApi, certificate::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_ldap_private_certificate(_api::LDAPApi, response_stream::Channel, certificate::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload private key

Upload the private key to be used for TLS verification. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **LDAPApi** | API context | 
**certificate** | **String****String**| The private key file | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_ldap_public_certificate**
> upload_ldap_public_certificate(_api::LDAPApi, certificate::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_ldap_public_certificate(_api::LDAPApi, response_stream::Channel, certificate::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload public certificate

Upload the public certificate to be used for TLS verification. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **LDAPApi** | API context | 
**certificate** | **String****String**| The public certificate file | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

