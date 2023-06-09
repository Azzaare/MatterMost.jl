# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""TestSiteURL_request

    TestSiteURLRequest(;
        site_url=nothing,
    )

    - site_url::String : The Site URL to test
"""
Base.@kwdef mutable struct TestSiteURLRequest <: OpenAPI.APIModel
    site_url::Union{Nothing, String} = nothing

    function TestSiteURLRequest(site_url, )
        OpenAPI.validate_property(TestSiteURLRequest, Symbol("site_url"), site_url)
        return new(site_url, )
    end
end # type TestSiteURLRequest

const _property_types_TestSiteURLRequest = Dict{Symbol,String}(Symbol("site_url")=>"String", )
OpenAPI.property_type(::Type{ TestSiteURLRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TestSiteURLRequest[name]))}

function check_required(o::TestSiteURLRequest)
    o.site_url === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ TestSiteURLRequest }, name::Symbol, val)
end
