# CreateUserRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | [default to nothing]
**username** | **String** |  | [default to nothing]
**first_name** | **String** |  | [optional] [default to nothing]
**last_name** | **String** |  | [optional] [default to nothing]
**nickname** | **String** |  | [optional] [default to nothing]
**auth_data** | **String** | Service-specific authentication data, such as email address. | [optional] [default to nothing]
**auth_service** | **String** | The authentication service, one of \&quot;email\&quot;, \&quot;gitlab\&quot;, \&quot;ldap\&quot;, \&quot;saml\&quot;, \&quot;office365\&quot;, \&quot;google\&quot;, and \&quot;\&quot;. | [optional] [default to nothing]
**password** | **String** | The password used for email authentication. | [optional] [default to nothing]
**locale** | **String** |  | [optional] [default to nothing]
**props** | **Any** |  | [optional] [default to nothing]
**notify_props** | [***UserNotifyProps**](UserNotifyProps.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


