# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct ElasticsearchApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `ElasticsearchApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ ElasticsearchApi }) = "http://your-mattermost-url.com/api/v4"

const _returntypes_purge_elasticsearch_indexes_ElasticsearchApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => StatusOK,
    Regex("^" * replace("500", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_purge_elasticsearch_indexes(_api::ElasticsearchApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_purge_elasticsearch_indexes_ElasticsearchApi, "/elasticsearch/purge_indexes", ["bearerAuth", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Purge all Elasticsearch indexes

Deletes all Elasticsearch indexes and their contents. After calling this endpoint, it is necessary to schedule a new Elasticsearch indexing job to repopulate the indexes. __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 

Params:

Return: StatusOK, OpenAPI.Clients.ApiResponse
"""
function purge_elasticsearch_indexes(_api::ElasticsearchApi; _mediaType=nothing)
    _ctx = _oacinternal_purge_elasticsearch_indexes(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function purge_elasticsearch_indexes(_api::ElasticsearchApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_purge_elasticsearch_indexes(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_test_elasticsearch_ElasticsearchApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => StatusOK,
    Regex("^" * replace("400", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("500", "x"=>".") * "\$") => AppError,
    Regex("^" * replace("501", "x"=>".") * "\$") => AppError,
)

function _oacinternal_test_elasticsearch(_api::ElasticsearchApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_test_elasticsearch_ElasticsearchApi, "/elasticsearch/test", ["bearerAuth", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Test Elasticsearch configuration

Test the current Elasticsearch configuration to see if the Elasticsearch server can be contacted successfully. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested.  __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 

Params:

Return: StatusOK, OpenAPI.Clients.ApiResponse
"""
function test_elasticsearch(_api::ElasticsearchApi; _mediaType=nothing)
    _ctx = _oacinternal_test_elasticsearch(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function test_elasticsearch(_api::ElasticsearchApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_test_elasticsearch(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export purge_elasticsearch_indexes
export test_elasticsearch