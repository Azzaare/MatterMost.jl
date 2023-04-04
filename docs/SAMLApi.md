# SAMLApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_saml_idp_certificate**](SAMLApi.md#delete_saml_idp_certificate) | **DELETE** /saml/certificate/idp | Remove IDP certificate
[**delete_saml_private_certificate**](SAMLApi.md#delete_saml_private_certificate) | **DELETE** /saml/certificate/private | Remove private key
[**delete_saml_public_certificate**](SAMLApi.md#delete_saml_public_certificate) | **DELETE** /saml/certificate/public | Remove public certificate
[**get_saml_certificate_status**](SAMLApi.md#get_saml_certificate_status) | **GET** /saml/certificate/status | Get certificate status
[**get_saml_metadata**](SAMLApi.md#get_saml_metadata) | **GET** /saml/metadata | Get metadata
[**get_saml_metadata_from_idp**](SAMLApi.md#get_saml_metadata_from_idp) | **POST** /saml/metadatafromidp | Get metadata from Identity Provider
[**migrate_auth_to_saml**](SAMLApi.md#migrate_auth_to_saml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.
[**reset_saml_auth_data_to_email**](SAMLApi.md#reset_saml_auth_data_to_email) | **POST** /saml/reset_auth_data | Reset AuthData to Email
[**upload_saml_idp_certificate**](SAMLApi.md#upload_saml_idp_certificate) | **POST** /saml/certificate/idp | Upload IDP certificate
[**upload_saml_private_certificate**](SAMLApi.md#upload_saml_private_certificate) | **POST** /saml/certificate/private | Upload private key
[**upload_saml_public_certificate**](SAMLApi.md#upload_saml_public_certificate) | **POST** /saml/certificate/public | Upload public certificate


# **delete_saml_idp_certificate**
> delete_saml_idp_certificate(_api::SAMLApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_saml_idp_certificate(_api::SAMLApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove IDP certificate

Delete the current IDP certificate being used with your SAML configuration. This will also disable SAML on your system as this certificate is required for SAML. ##### Permissions Must have `sysconsole_write_authentication` permission. 

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

# **delete_saml_private_certificate**
> delete_saml_private_certificate(_api::SAMLApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_saml_private_certificate(_api::SAMLApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove private key

Delete the current private key being used with your SAML configuration. This will also disable encryption for SAML on your system as this key is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

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

# **delete_saml_public_certificate**
> delete_saml_public_certificate(_api::SAMLApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_saml_public_certificate(_api::SAMLApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove public certificate

Delete the current public certificate being used with your SAML configuration. This will also disable encryption for SAML on your system as this certificate is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

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

# **get_saml_certificate_status**
> get_saml_certificate_status(_api::SAMLApi; _mediaType=nothing) -> SamlCertificateStatus, OpenAPI.Clients.ApiResponse <br/>
> get_saml_certificate_status(_api::SAMLApi, response_stream::Channel; _mediaType=nothing) -> Channel{ SamlCertificateStatus }, OpenAPI.Clients.ApiResponse

Get certificate status

Get the status of the uploaded certificates and keys in use by your SAML configuration. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**SamlCertificateStatus**](SamlCertificateStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_saml_metadata**
> get_saml_metadata(_api::SAMLApi; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_saml_metadata(_api::SAMLApi, response_stream::Channel; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Get metadata

Get SAML metadata from the server. SAML must be configured properly. ##### Permissions No permission required. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_saml_metadata_from_idp**
> get_saml_metadata_from_idp(_api::SAMLApi; get_saml_metadata_from_idp_request=nothing, _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_saml_metadata_from_idp(_api::SAMLApi, response_stream::Channel; get_saml_metadata_from_idp_request=nothing, _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Get metadata from Identity Provider

Get SAML metadata from the Identity Provider. SAML must be configured properly. ##### Permissions No permission required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SAMLApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_saml_metadata_from_idp_request** | [**GetSamlMetadataFromIdpRequest**](GetSamlMetadataFromIdpRequest.md)|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **migrate_auth_to_saml**
> migrate_auth_to_saml(_api::SAMLApi; migrate_auth_to_saml_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> migrate_auth_to_saml(_api::SAMLApi, response_stream::Channel; migrate_auth_to_saml_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SAMLApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrate_auth_to_saml_request** | [**MigrateAuthToSamlRequest**](MigrateAuthToSamlRequest.md)|  | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **reset_saml_auth_data_to_email**
> reset_saml_auth_data_to_email(_api::SAMLApi; reset_saml_auth_data_to_email_request=nothing, _mediaType=nothing) -> ResetSamlAuthDataToEmail200Response, OpenAPI.Clients.ApiResponse <br/>
> reset_saml_auth_data_to_email(_api::SAMLApi, response_stream::Channel; reset_saml_auth_data_to_email_request=nothing, _mediaType=nothing) -> Channel{ ResetSamlAuthDataToEmail200Response }, OpenAPI.Clients.ApiResponse

Reset AuthData to Email

Reset the AuthData field of SAML users to their email. This is meant to be used when the \"id\" attribute is set to an empty value (\"\") from a previously non-empty value. __Minimum server version__: 5.35 ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SAMLApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reset_saml_auth_data_to_email_request** | [**ResetSamlAuthDataToEmailRequest**](ResetSamlAuthDataToEmailRequest.md)|  | 

### Return type

[**ResetSamlAuthDataToEmail200Response**](ResetSamlAuthDataToEmail200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_saml_idp_certificate**
> upload_saml_idp_certificate(_api::SAMLApi, certificate::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_saml_idp_certificate(_api::SAMLApi, response_stream::Channel, certificate::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload IDP certificate

Upload the IDP certificate to be used with your SAML configuration. The server will pick a hard-coded filename for the IdpCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SAMLApi** | API context | 
**certificate** | **String****String**| The IDP certificate file | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_saml_private_certificate**
> upload_saml_private_certificate(_api::SAMLApi, certificate::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_saml_private_certificate(_api::SAMLApi, response_stream::Channel, certificate::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload private key

Upload the private key to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SAMLApi** | API context | 
**certificate** | **String****String**| The private key file | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_saml_public_certificate**
> upload_saml_public_certificate(_api::SAMLApi, certificate::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_saml_public_certificate(_api::SAMLApi, response_stream::Channel, certificate::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload public certificate

Upload the public certificate to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SAMLApi** | API context | 
**certificate** | **String****String**| The public certificate file | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

