# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cognitoidentityprovider)

module Aws::CognitoIdentityProvider
  # An API client for CognitoIdentityProvider.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CognitoIdentityProvider::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cognitoidentityprovider

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::CognitoIdentityProvider::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::CognitoIdentityProvider::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CognitoIdentityProvider::EndpointParameters`
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds additional user attributes to the user pool schema.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to add custom
    #   attributes.
    #
    # @option params [required, Array<Types::SchemaAttributeType>] :custom_attributes
    #   An array of custom attributes, such as Mutable and Name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_custom_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     custom_attributes: [ # required
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType",
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType",
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributes AWS API Documentation
    #
    # @overload add_custom_attributes(params = {})
    # @param [Hash] params ({})
    def add_custom_attributes(params = {}, options = {})
      req = build_request(:add_custom_attributes, params)
      req.send_request(options)
    end

    # Adds a user to a group. A user who is in a group can present a
    # preferred-role claim to an identity pool, and populates a
    # `cognito:groups` claim to their access and identity tokens.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to add your user to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_add_user_to_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminAddUserToGroup AWS API Documentation
    #
    # @overload admin_add_user_to_group(params = {})
    # @param [Hash] params ({})
    def admin_add_user_to_group(params = {}, options = {})
      req = build_request(:admin_add_user_to_group, params)
      req.send_request(options)
    end

    # This IAM-authenticated API operation confirms user sign-up as an
    # administrator. Unlike [ConfirmSignUp][1], your IAM credentials
    # authorize user account confirmation. No confirmation code is required.
    #
    # This request sets a user account active in a user pool that [requires
    # confirmation of new user accounts][2] before they can sign in. You can
    # configure your user pool to not send confirmation codes to new users
    # and instead confirm them with this API operation on the back end.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmSignUp.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#signing-up-users-in-your-app-and-confirming-them-as-admin
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for which you want to confirm user registration.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   If your user pool configuration includes triggers, the
    #   AdminConfirmSignUp API action invokes the Lambda function that is
    #   specified for the *post confirmation* trigger. When Amazon Cognito
    #   invokes this function, it passes a JSON payload, which the function
    #   receives as input. In this payload, the `clientMetadata` attribute
    #   provides the data that you assigned to the ClientMetadata parameter in
    #   your AdminConfirmSignUp request. In your function code in Lambda, you
    #   can process the ClientMetadata value to enhance your workflow for your
    #   specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_confirm_sign_up({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUp AWS API Documentation
    #
    # @overload admin_confirm_sign_up(params = {})
    # @param [Hash] params ({})
    def admin_confirm_sign_up(params = {}, options = {})
      req = build_request(:admin_confirm_sign_up, params)
      req.send_request(options)
    end

    # Creates a new user in the specified user pool.
    #
    # If `MessageAction` isn't set, the default is to send a welcome
    # message via email or phone (SMS).
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # This message is based on a template that you configured in your call
    # to create or update a user pool. This template includes your custom
    # sign-up instructions and placeholders for user name and temporary
    # password.
    #
    # Alternatively, you can call `AdminCreateUser` with `SUPPRESS` for the
    # `MessageAction` parameter, and Amazon Cognito won't send any email.
    #
    # In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state
    # until they sign in and change their password.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where the user will be created.
    #
    # @option params [required, String] :username
    #   The value that you want to set as the username sign-in attribute. The
    #   following conditions apply to the username parameter.
    #
    #   * The username can't be a duplicate of another username in the same
    #     user pool.
    #
    #   * You can't change the value of a username after you create it.
    #
    #   * You can only provide a value if usernames are a valid sign-in
    #     attribute for your user pool. If your user pool only supports phone
    #     numbers or email addresses as sign-in attributes, Amazon Cognito
    #     automatically generates a username value. For more information, see
    #     [Customizing sign-in attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs that contain user attributes and
    #   attribute values to be set for the user to be created. You can create
    #   a user without specifying any attributes other than `Username`.
    #   However, any attributes that you specify as required (when creating a
    #   user pool or in the **Attributes** tab of the console) either you
    #   should supply (in your call to `AdminCreateUser`) or the user should
    #   supply (when they sign up in response to your welcome message).
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   To send a message inviting the user to sign up, you must specify the
    #   user's email address or phone number. You can do this in your call to
    #   AdminCreateUser or in the **Users** tab of the Amazon Cognito console
    #   for managing your user pools.
    #
    #   In your call to `AdminCreateUser`, you can set the `email_verified`
    #   attribute to `True`, and you can set the `phone_number_verified`
    #   attribute to `True`. You can also do this by calling
    #   [AdminUpdateUserAttributes][1].
    #
    #   * **email**: The email address of the user to whom the message that
    #     contains the code and username will be sent. Required if the
    #     `email_verified` attribute is set to `True`, or if `"EMAIL"` is
    #     specified in the `DesiredDeliveryMediums` parameter.
    #
    #   * **phone\_number**: The phone number of the user to whom the message
    #     that contains the code and username will be sent. Required if the
    #     `phone_number_verified` attribute is set to `True`, or if `"SMS"` is
    #     specified in the `DesiredDeliveryMediums` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminUpdateUserAttributes.html
    #
    # @option params [Array<Types::AttributeType>] :validation_data
    #   Temporary user attributes that contribute to the outcomes of your pre
    #   sign-up Lambda trigger. This set of key-value pairs are for custom
    #   validation of information that you collect from your users but don't
    #   need to retain.
    #
    #   Your Lambda function can analyze this additional data and act on it.
    #   Your function might perform external API operations like logging user
    #   attributes and validation data to Amazon CloudWatch Logs. Validation
    #   data might also affect the response that your function returns to
    #   Amazon Cognito, like automatically confirming the user if they sign up
    #   from within your network.
    #
    #   For more information about the pre sign-up Lambda trigger, see [Pre
    #   sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #
    # @option params [String] :temporary_password
    #   The user's temporary password. This password must conform to the
    #   password policy that you specified when you created the user pool.
    #
    #   The temporary password is valid only once. To complete the Admin
    #   Create User flow, the user must enter the temporary password in the
    #   sign-in page, along with a new password to be used in all future
    #   sign-ins.
    #
    #   This parameter isn't required. If you don't specify a value, Amazon
    #   Cognito generates one for you.
    #
    #   The temporary password can only be used until the user account
    #   expiration limit that you set for your user pool. To reset the account
    #   after that time limit, you must call `AdminCreateUser` again and
    #   specify `RESEND` for the `MessageAction` parameter.
    #
    # @option params [Boolean] :force_alias_creation
    #   This parameter is used only if the `phone_number_verified` or
    #   `email_verified` attribute is set to `True`. Otherwise, it is ignored.
    #
    #   If this parameter is set to `True` and the phone number or email
    #   address specified in the UserAttributes parameter already exists as an
    #   alias with a different user, the API call will migrate the alias from
    #   the previous user to the newly created user. The previous user will no
    #   longer be able to log in using that alias.
    #
    #   If this parameter is set to `False`, the API throws an
    #   `AliasExistsException` error if the alias already exists. The default
    #   value is `False`.
    #
    # @option params [String] :message_action
    #   Set to `RESEND` to resend the invitation message to a user that
    #   already exists and reset the expiration limit on the user's account.
    #   Set to `SUPPRESS` to suppress sending the message. You can specify
    #   only one value.
    #
    # @option params [Array<String>] :desired_delivery_mediums
    #   Specify `"EMAIL"` if email will be used to send the welcome message.
    #   Specify `"SMS"` if the phone number will be used. The default value is
    #   `"SMS"`. You can specify more than one value.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminCreateUser API action, Amazon Cognito
    #   invokes the function that is assigned to the *pre sign-up* trigger.
    #   When Amazon Cognito invokes this function, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your AdminCreateUser request. In
    #   your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::AdminCreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminCreateUserResponse#user #user} => Types::UserType
    #
    #
    # @example Example: An AdminCreateUser request for for a test user named John.
    #
    #   # This request submits a value for all possible parameters for AdminCreateUser.
    #
    #   resp = client.admin_create_user({
    #     desired_delivery_mediums: [
    #       "SMS", 
    #     ], 
    #     message_action: "SUPPRESS", 
    #     temporary_password: "This-is-my-test-99!", 
    #     user_attributes: [
    #       {
    #         name: "name", 
    #         value: "John", 
    #       }, 
    #       {
    #         name: "phone_number", 
    #         value: "+12065551212", 
    #       }, 
    #       {
    #         name: "email", 
    #         value: "testuser@example.com", 
    #       }, 
    #     ], 
    #     user_pool_id: "us-east-1_EXAMPLE", 
    #     username: "testuser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     user: {
    #       attributes: [
    #         {
    #           name: "sub", 
    #           value: "d16b4aa8-8633-4abd-93b3-5062a8e1b5f8", 
    #         }, 
    #         {
    #           name: "name", 
    #           value: "John", 
    #         }, 
    #         {
    #           name: "phone_number", 
    #           value: "+12065551212", 
    #         }, 
    #         {
    #           name: "email", 
    #           value: "testuser@example.com", 
    #         }, 
    #       ], 
    #       enabled: true, 
    #       user_create_date: Time.parse(1689980857.949), 
    #       user_last_modified_date: Time.parse(1689980857.949), 
    #       user_status: "FORCE_CHANGE_PASSWORD", 
    #       username: "testuser", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_create_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     validation_data: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     temporary_password: "PasswordType",
    #     force_alias_creation: false,
    #     message_action: "RESEND", # accepts RESEND, SUPPRESS
    #     desired_delivery_mediums: ["SMS"], # accepts SMS, EMAIL
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user.username #=> String
    #   resp.user.attributes #=> Array
    #   resp.user.attributes[0].name #=> String
    #   resp.user.attributes[0].value #=> String
    #   resp.user.user_create_date #=> Time
    #   resp.user.user_last_modified_date #=> Time
    #   resp.user.enabled #=> Boolean
    #   resp.user.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.user.mfa_options #=> Array
    #   resp.user.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.user.mfa_options[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUser AWS API Documentation
    #
    # @overload admin_create_user(params = {})
    # @param [Hash] params ({})
    def admin_create_user(params = {}, options = {})
      req = build_request(:admin_create_user, params)
      req.send_request(options)
    end

    # Deletes a user as an administrator. Works on any user.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to delete the user.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUser AWS API Documentation
    #
    # @overload admin_delete_user(params = {})
    # @param [Hash] params ({})
    def admin_delete_user(params = {}, options = {})
      req = build_request(:admin_delete_user, params)
      req.send_request(options)
    end

    # Deletes the user attributes in a user pool as an administrator. Works
    # on any user.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to delete user
    #   attributes.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, Array<String>] :user_attribute_names
    #   An array of strings representing the user attribute names you want to
    #   delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attribute_names: ["AttributeNameType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserAttributes AWS API Documentation
    #
    # @overload admin_delete_user_attributes(params = {})
    # @param [Hash] params ({})
    def admin_delete_user_attributes(params = {}, options = {})
      req = build_request(:admin_delete_user_attributes, params)
      req.send_request(options)
    end

    # Prevents the user from signing in with the specified external (SAML or
    # social) identity provider (IdP). If the user that you want to
    # deactivate is a Amazon Cognito user pools native username + password
    # user, they can't use their password to sign in. If the user to
    # deactivate is a linked external IdP user, any link between that user
    # and an existing user is removed. When the external user signs in
    # again, and the user is no longer attached to the previously linked
    # `DestinationUser`, the user must create a new user account. See
    # [AdminLinkProviderForUser][1].
    #
    # The `ProviderName` must match the value specified when creating an IdP
    # for the pool.
    #
    # To deactivate a native username + password user, the `ProviderName`
    # value must be `Cognito` and the `ProviderAttributeName` must be
    # `Cognito_Subject`. The `ProviderAttributeValue` must be the name that
    # is used in the user pool for the user.
    #
    # The `ProviderAttributeName` must always be `Cognito_Subject` for
    # social IdPs. The `ProviderAttributeValue` must always be the exact
    # subject that was used when the user was originally linked as a source
    # user.
    #
    # For de-linking a SAML identity, there are two scenarios. If the linked
    # identity has not yet been used to sign in, the `ProviderAttributeName`
    # and `ProviderAttributeValue` must be the same values that were used
    # for the `SourceUser` when the identities were originally linked using
    # ` AdminLinkProviderForUser` call. (If the linking was done with
    # `ProviderAttributeName` set to `Cognito_Subject`, the same applies
    # here). However, if the user has already signed in, the
    # `ProviderAttributeName` must be `Cognito_Subject` and
    # `ProviderAttributeValue` must be the subject of the SAML assertion.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, Types::ProviderUserIdentifierType] :user
    #   The user to be disabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_provider_for_user({
    #     user_pool_id: "StringType", # required
    #     user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableProviderForUser AWS API Documentation
    #
    # @overload admin_disable_provider_for_user(params = {})
    # @param [Hash] params ({})
    def admin_disable_provider_for_user(params = {}, options = {})
      req = build_request(:admin_disable_provider_for_user, params)
      req.send_request(options)
    end

    # Deactivates a user and revokes all access tokens for the user. A
    # deactivated user can't sign in, but still appears in the responses to
    # `GetUser` and `ListUsers` API requests.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to disable the user.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUser AWS API Documentation
    #
    # @overload admin_disable_user(params = {})
    # @param [Hash] params ({})
    def admin_disable_user(params = {}, options = {})
      req = build_request(:admin_disable_user, params)
      req.send_request(options)
    end

    # Enables the specified user as an administrator. Works on any user.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to enable the user.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_enable_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUser AWS API Documentation
    #
    # @overload admin_enable_user(params = {})
    # @param [Hash] params ({})
    def admin_enable_user(params = {}, options = {})
      req = build_request(:admin_enable_user, params)
      req.send_request(options)
    end

    # Forgets the device, as an administrator.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_forget_device({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminForgetDevice AWS API Documentation
    #
    # @overload admin_forget_device(params = {})
    # @param [Hash] params ({})
    def admin_forget_device(params = {}, options = {})
      req = build_request(:admin_forget_device, params)
      req.send_request(options)
    end

    # Gets the device, as an administrator.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Types::AdminGetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminGetDeviceResponse#device #device} => Types::DeviceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_device({
    #     device_key: "DeviceKeyType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_key #=> String
    #   resp.device.device_attributes #=> Array
    #   resp.device.device_attributes[0].name #=> String
    #   resp.device.device_attributes[0].value #=> String
    #   resp.device.device_create_date #=> Time
    #   resp.device.device_last_modified_date #=> Time
    #   resp.device.device_last_authenticated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetDevice AWS API Documentation
    #
    # @overload admin_get_device(params = {})
    # @param [Hash] params ({})
    def admin_get_device(params = {}, options = {})
      req = build_request(:admin_get_device, params)
      req.send_request(options)
    end

    # Gets the specified user by user name in a user pool as an
    # administrator. Works on any user.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to get information
    #   about the user.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Types::AdminGetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminGetUserResponse#username #username} => String
    #   * {Types::AdminGetUserResponse#user_attributes #user_attributes} => Array&lt;Types::AttributeType&gt;
    #   * {Types::AdminGetUserResponse#user_create_date #user_create_date} => Time
    #   * {Types::AdminGetUserResponse#user_last_modified_date #user_last_modified_date} => Time
    #   * {Types::AdminGetUserResponse#enabled #enabled} => Boolean
    #   * {Types::AdminGetUserResponse#user_status #user_status} => String
    #   * {Types::AdminGetUserResponse#mfa_options #mfa_options} => Array&lt;Types::MFAOptionType&gt;
    #   * {Types::AdminGetUserResponse#preferred_mfa_setting #preferred_mfa_setting} => String
    #   * {Types::AdminGetUserResponse#user_mfa_setting_list #user_mfa_setting_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.user_attributes #=> Array
    #   resp.user_attributes[0].name #=> String
    #   resp.user_attributes[0].value #=> String
    #   resp.user_create_date #=> Time
    #   resp.user_last_modified_date #=> Time
    #   resp.enabled #=> Boolean
    #   resp.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.mfa_options #=> Array
    #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.mfa_options[0].attribute_name #=> String
    #   resp.preferred_mfa_setting #=> String
    #   resp.user_mfa_setting_list #=> Array
    #   resp.user_mfa_setting_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUser AWS API Documentation
    #
    # @overload admin_get_user(params = {})
    # @param [Hash] params ({})
    def admin_get_user(params = {}, options = {})
      req = build_request(:admin_get_user, params)
      req.send_request(options)
    end

    # Initiates the authentication flow, as an administrator.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow for this call to run. The API action will
    #   depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the
    #     Secure Remote Password (SRP) protocol variables to be used for next
    #     challenge execution.
    #
    #   * `ADMIN_USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD`
    #     and return the next challenge or tokens.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`: Authentication flow for the Secure Remote Password
    #     (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`: Custom authentication flow.
    #
    #   * `ADMIN_NO_SRP_AUTH`: Non-SRP authentication flow; you can pass in
    #     the USERNAME and PASSWORD directly if the flow is enabled for
    #     calling the app client.
    #
    #   * `ADMIN_USER_PASSWORD_AUTH`: Admin-based user password
    #     authentication. This replaces the `ADMIN_NO_SRP_AUTH` authentication
    #     flow. In this flow, Amazon Cognito receives the password in the
    #     request instead of using the SRP process to verify passwords.
    #
    # @option params [Hash<String,String>] :auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking. The required values depend on the
    #   value of `AuthFlow`:
    #
    #   * For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `ADMIN_USER_PASSWORD_AUTH`: `USERNAME` (required), `PASSWORD`
    #     (required), `SECRET_HASH` (required if the app client is configured
    #     with a client secret), `DEVICE_KEY`.
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`. To start the
    #     authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminInitiateAuth API action, Amazon
    #   Cognito invokes the Lambda functions that are specified for various
    #   triggers. The ClientMetadata value is passed as input to the functions
    #   for only the following triggers:
    #
    #   * Pre signup
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `validationData` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your
    #   AdminInitiateAuth request. In your function code in Lambda, you can
    #   process the `validationData` value to enhance your workflow for your
    #   specific needs.
    #
    #   When you use the AdminInitiateAuth API action, Amazon Cognito also
    #   invokes the functions for the following triggers, but it doesn't
    #   provide the ClientMetadata value as input:
    #
    #   * Post authentication
    #
    #   * Custom message
    #
    #   * Pre token generation
    #
    #   * Create auth challenge
    #
    #   * Define auth challenge
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The analytics metadata for collecting Amazon Pinpoint metrics for
    #   `AdminInitiateAuth` calls.
    #
    # @option params [Types::ContextDataType] :context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @return [Types::AdminInitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminInitiateAuthResponse#challenge_name #challenge_name} => String
    #   * {Types::AdminInitiateAuthResponse#session #session} => String
    #   * {Types::AdminInitiateAuthResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::AdminInitiateAuthResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_initiate_auth({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH, USER_PASSWORD_AUTH, ADMIN_USER_PASSWORD_AUTH
    #     auth_parameters: {
    #       "StringType" => "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     context_data: {
    #       ip_address: "StringType", # required
    #       server_name: "StringType", # required
    #       server_path: "StringType", # required
    #       http_headers: [ # required
    #         {
    #           header_name: "StringType",
    #           header_value: "StringType",
    #         },
    #       ],
    #       encoded_data: "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuth AWS API Documentation
    #
    # @overload admin_initiate_auth(params = {})
    # @param [Hash] params ({})
    def admin_initiate_auth(params = {}, options = {})
      req = build_request(:admin_initiate_auth, params)
      req.send_request(options)
    end

    # Links an existing user account in a user pool (`DestinationUser`) to
    # an identity from an external IdP (`SourceUser`) based on a specified
    # attribute name and value from the external IdP. This allows you to
    # create a link from the existing user account to an external federated
    # user identity that has not yet been used to sign in. You can then use
    # the federated user identity to sign in as the existing user account.
    #
    # For example, if there is an existing user with a username and
    # password, this API links that user to a federated user identity. When
    # the user signs in with a federated user identity, they sign in as the
    # existing user account.
    #
    # <note markdown="1"> The maximum number of federated identities linked to a user is five.
    #
    #  </note>
    #
    # Because this API allows a user with an external federated identity to
    # sign in as an existing user in the user pool, it is critical that it
    # only be used with external IdPs and provider attributes that have been
    # trusted by the application owner.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, Types::ProviderUserIdentifierType] :destination_user
    #   The existing user in the user pool that you want to assign to the
    #   external IdP user account. This user can be a local (Username +
    #   Password) Amazon Cognito user pools user or a federated user (for
    #   example, a SAML or Facebook user). If the user doesn't exist, Amazon
    #   Cognito generates an exception. Amazon Cognito returns this user when
    #   the new user (with the linked IdP attribute) signs in.
    #
    #   For a native username + password user, the `ProviderAttributeValue`
    #   for the `DestinationUser` should be the username in the user pool. For
    #   a federated user, it should be the provider-specific `user_id`.
    #
    #   The `ProviderAttributeName` of the `DestinationUser` is ignored.
    #
    #   The `ProviderName` should be set to `Cognito` for users in Cognito
    #   user pools.
    #
    #   All attributes in the DestinationUser profile must be mutable. If you
    #   have assigned the user any immutable custom attributes, the operation
    #   won't succeed.
    #
    # @option params [required, Types::ProviderUserIdentifierType] :source_user
    #   An external IdP account for a user who doesn't exist yet in the user
    #   pool. This user must be a federated user (for example, a SAML or
    #   Facebook user), not another native user.
    #
    #   If the `SourceUser` is using a federated social IdP, such as Facebook,
    #   Google, or Login with Amazon, you must set the `ProviderAttributeName`
    #   to `Cognito_Subject`. For social IdPs, the `ProviderName` will be
    #   `Facebook`, `Google`, or `LoginWithAmazon`, and Amazon Cognito will
    #   automatically parse the Facebook, Google, and Login with Amazon tokens
    #   for `id`, `sub`, and `user_id`, respectively. The
    #   `ProviderAttributeValue` for the user must be the same value as the
    #   `id`, `sub`, or `user_id` value found in the social IdP token.
    #
    #
    #
    #   For OIDC, the `ProviderAttributeName` can be any value that matches a
    #   claim in the ID token, or that your app retrieves from the `userInfo`
    #   endpoint. You must map the claim to a user pool attribute in your IdP
    #   configuration, and set the user pool attribute name as the value of
    #   `ProviderAttributeName` in your `AdminLinkProviderForUser` request.
    #
    #   For SAML, the `ProviderAttributeName` can be any value that matches a
    #   claim in the SAML assertion. To link SAML users based on the subject
    #   of the SAML assertion, map the subject to a claim through the SAML IdP
    #   and set that claim name as the value of `ProviderAttributeName` in
    #   your `AdminLinkProviderForUser` request.
    #
    #   For both OIDC and SAML users, when you set `ProviderAttributeName` to
    #   `Cognito_Subject`, Amazon Cognito will automatically parse the default
    #   unique identifier found in the subject from the IdP token.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_link_provider_for_user({
    #     user_pool_id: "StringType", # required
    #     destination_user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType",
    #     },
    #     source_user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUser AWS API Documentation
    #
    # @overload admin_link_provider_for_user(params = {})
    # @param [Hash] params ({})
    def admin_link_provider_for_user(params = {}, options = {})
      req = build_request(:admin_link_provider_for_user, params)
      req.send_request(options)
    end

    # Lists devices, as an administrator.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Integer] :limit
    #   The limit of the devices request.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::AdminListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListDevicesResponse#devices #devices} => Array&lt;Types::DeviceType&gt;
    #   * {Types::AdminListDevicesResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_devices({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_key #=> String
    #   resp.devices[0].device_attributes #=> Array
    #   resp.devices[0].device_attributes[0].name #=> String
    #   resp.devices[0].device_attributes[0].value #=> String
    #   resp.devices[0].device_create_date #=> Time
    #   resp.devices[0].device_last_modified_date #=> Time
    #   resp.devices[0].device_last_authenticated_date #=> Time
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListDevices AWS API Documentation
    #
    # @overload admin_list_devices(params = {})
    # @param [Hash] params ({})
    def admin_list_devices(params = {}, options = {})
      req = build_request(:admin_list_devices, params)
      req.send_request(options)
    end

    # Lists the groups that a user belongs to.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [Integer] :limit
    #   The limit of the request to list groups.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::AdminListGroupsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListGroupsForUserResponse#groups #groups} => Array&lt;Types::GroupType&gt;
    #   * {Types::AdminListGroupsForUserResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_groups_for_user({
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].user_pool_id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].role_arn #=> String
    #   resp.groups[0].precedence #=> Integer
    #   resp.groups[0].last_modified_date #=> Time
    #   resp.groups[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListGroupsForUser AWS API Documentation
    #
    # @overload admin_list_groups_for_user(params = {})
    # @param [Hash] params ({})
    def admin_list_groups_for_user(params = {}, options = {})
      req = build_request(:admin_list_groups_for_user, params)
      req.send_request(options)
    end

    # A history of user activity and any risks detected as part of Amazon
    # Cognito advanced security.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Integer] :max_results
    #   The maximum number of authentication events to return. Returns 60
    #   events if you set `MaxResults` to 0, or if you don't include a
    #   `MaxResults` parameter.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::AdminListUserAuthEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListUserAuthEventsResponse#auth_events #auth_events} => Array&lt;Types::AuthEventType&gt;
    #   * {Types::AdminListUserAuthEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_user_auth_events({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_events #=> Array
    #   resp.auth_events[0].event_id #=> String
    #   resp.auth_events[0].event_type #=> String, one of "SignIn", "SignUp", "ForgotPassword", "PasswordChange", "ResendCode"
    #   resp.auth_events[0].creation_date #=> Time
    #   resp.auth_events[0].event_response #=> String, one of "Pass", "Fail", "InProgress"
    #   resp.auth_events[0].event_risk.risk_decision #=> String, one of "NoRisk", "AccountTakeover", "Block"
    #   resp.auth_events[0].event_risk.risk_level #=> String, one of "Low", "Medium", "High"
    #   resp.auth_events[0].event_risk.compromised_credentials_detected #=> Boolean
    #   resp.auth_events[0].challenge_responses #=> Array
    #   resp.auth_events[0].challenge_responses[0].challenge_name #=> String, one of "Password", "Mfa"
    #   resp.auth_events[0].challenge_responses[0].challenge_response #=> String, one of "Success", "Failure"
    #   resp.auth_events[0].event_context_data.ip_address #=> String
    #   resp.auth_events[0].event_context_data.device_name #=> String
    #   resp.auth_events[0].event_context_data.timezone #=> String
    #   resp.auth_events[0].event_context_data.city #=> String
    #   resp.auth_events[0].event_context_data.country #=> String
    #   resp.auth_events[0].event_feedback.feedback_value #=> String, one of "Valid", "Invalid"
    #   resp.auth_events[0].event_feedback.provider #=> String
    #   resp.auth_events[0].event_feedback.feedback_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListUserAuthEvents AWS API Documentation
    #
    # @overload admin_list_user_auth_events(params = {})
    # @param [Hash] params ({})
    def admin_list_user_auth_events(params = {}, options = {})
      req = build_request(:admin_list_user_auth_events, params)
      req.send_request(options)
    end

    # Removes the specified user from the specified group.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :group_name
    #   The group name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_remove_user_from_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRemoveUserFromGroup AWS API Documentation
    #
    # @overload admin_remove_user_from_group(params = {})
    # @param [Hash] params ({})
    def admin_remove_user_from_group(params = {}, options = {})
      req = build_request(:admin_remove_user_from_group, params)
      req.send_request(options)
    end

    # Resets the specified user's password in a user pool as an
    # administrator. Works on any user.
    #
    # To use this API operation, your user pool must have self-service
    # account recovery configured. Use [AdminSetUserPassword][1] if you
    # manage passwords as an administrator.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # Deactivates a user's password, requiring them to change it. If a user
    # tries to sign in after the API is called, Amazon Cognito responds with
    # a `PasswordResetRequiredException` error. Your app must then perform
    # the actions that reset your user's password: the forgot-password
    # flow. In addition, if the user pool has phone verification selected
    # and a verified phone number exists for the user, or if email
    # verification is selected and a verified email exists for the user,
    # calling this API will also result in sending a message to the end user
    # with the code to change their password.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][4]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][5]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to reset the user's
    #   password.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminResetUserPassword API action, Amazon
    #   Cognito invokes the function that is assigned to the *custom message*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your AdminResetUserPassword
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_reset_user_password({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPassword AWS API Documentation
    #
    # @overload admin_reset_user_password(params = {})
    # @param [Hash] params ({})
    def admin_reset_user_password(params = {}, options = {})
      req = build_request(:admin_reset_user_password, params)
      req.send_request(options)
    end

    # Some API operations in a user pool generate a challenge, like a prompt
    # for an MFA code, for device authentication that bypasses MFA, or for a
    # custom authentication challenge. An `AdminRespondToAuthChallenge` API
    # request provides the answer to that challenge, like a code or a secure
    # remote password (SRP). The parameters of a response to an
    # authentication challenge vary with the type of challenge.
    #
    # For more information about custom authentication challenges, see
    # [Custom authentication challenge Lambda triggers][1].
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][4]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][5]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [required, String] :challenge_name
    #   The challenge name. For more information, see [AdminInitiateAuth][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html
    #
    # @option params [Hash<String,String>] :challenge_responses
    #   The responses to the challenge that you received in the previous
    #   request. Each challenge has its own required response parameters. The
    #   following examples are partial JSON request bodies that highlight
    #   challenge-response parameters.
    #
    #   You must provide a SECRET\_HASH parameter in all challenge responses
    #   to an app client that has a client secret.
    #
    #   SMS\_MFA
    #
    #   : `"ChallengeName": "SMS_MFA", "ChallengeResponses": \{"SMS_MFA_CODE":
    #     "[SMS_code]", "USERNAME": "[username]"\}`
    #
    #   PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #     \{"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"\}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   CUSTOM\_CHALLENGE
    #
    #   : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "ANSWER": "[challenge_answer]"\}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   NEW\_PASSWORD\_REQUIRED
    #
    #   : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #     \{"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"\}`
    #
    #     To set any required attributes that `InitiateAuth` returned in an
    #     `requiredAttributes` parameter, add
    #     `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #     parameter can also set values for writable attributes that aren't
    #     required by your user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #     required attribute that already has a value. In
    #     `RespondToAuthChallenge`, set a value for any keys that Amazon
    #     Cognito returned in the `requiredAttributes` parameter, then use the
    #     `UpdateUserAttributes` API operation to modify the value of any
    #     additional attributes.
    #
    #      </note>
    #
    #   SOFTWARE\_TOKEN\_MFA
    #
    #   : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #     [authenticator_code]\}`
    #
    #   DEVICE\_SRP\_AUTH
    #
    #   : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #     "[srp_a]"\}`
    #
    #   DEVICE\_PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #     \{"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #     "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK":
    #     "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME":
    #     "[username]"\}`
    #
    #   MFA\_SETUP
    #
    #   : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": \{"USERNAME":
    #     "[username]"\}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    #   SELECT\_MFA\_TYPE
    #
    #   : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #     SOFTWARE_TOKEN_MFA]"\}`
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [String] :session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If an `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller must pass another challenge, it
    #   returns a session with other challenge parameters. This session should
    #   be passed as it is to the next `RespondToAuthChallenge` API call.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The analytics metadata for collecting Amazon Pinpoint metrics for
    #   `AdminRespondToAuthChallenge` calls.
    #
    # @option params [Types::ContextDataType] :context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminRespondToAuthChallenge API action,
    #   Amazon Cognito invokes any functions that you have assigned to the
    #   following triggers:
    #
    #   * pre sign-up
    #
    #   * custom message
    #
    #   * post authentication
    #
    #   * user migration
    #
    #   * pre token generation
    #
    #   * define auth challenge
    #
    #   * create auth challenge
    #
    #   * verify auth challenge response
    #
    #   When Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute that provides the data that you assigned to
    #   the ClientMetadata parameter in your AdminRespondToAuthChallenge
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::AdminRespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminRespondToAuthChallengeResponse#challenge_name #challenge_name} => String
    #   * {Types::AdminRespondToAuthChallengeResponse#session #session} => String
    #   * {Types::AdminRespondToAuthChallengeResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::AdminRespondToAuthChallengeResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_respond_to_auth_challenge({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, SOFTWARE_TOKEN_MFA, SELECT_MFA_TYPE, MFA_SETUP, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED
    #     challenge_responses: {
    #       "StringType" => "StringType",
    #     },
    #     session: "SessionType",
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     context_data: {
    #       ip_address: "StringType", # required
    #       server_name: "StringType", # required
    #       server_path: "StringType", # required
    #       http_headers: [ # required
    #         {
    #           header_name: "StringType",
    #           header_value: "StringType",
    #         },
    #       ],
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallenge AWS API Documentation
    #
    # @overload admin_respond_to_auth_challenge(params = {})
    # @param [Hash] params ({})
    def admin_respond_to_auth_challenge(params = {}, options = {})
      req = build_request(:admin_respond_to_auth_challenge, params)
      req.send_request(options)
    end

    # The user's multi-factor authentication (MFA) preference, including
    # which MFA options are activated, and if any are preferred. Only one
    # factor can be set as preferred. The preferred MFA factor will be used
    # to authenticate a user if multiple factors are activated. If multiple
    # options are activated and no preference is set, a challenge to choose
    # an MFA option will be returned during sign-in.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [Types::SMSMfaSettingsType] :sms_mfa_settings
    #   The SMS text message MFA settings.
    #
    # @option params [Types::SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   The time-based one-time password software token MFA settings.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_mfa_preference({
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreference AWS API Documentation
    #
    # @overload admin_set_user_mfa_preference(params = {})
    # @param [Hash] params ({})
    def admin_set_user_mfa_preference(params = {}, options = {})
      req = build_request(:admin_set_user_mfa_preference, params)
      req.send_request(options)
    end

    # Sets the specified user's password in a user pool as an
    # administrator. Works on any user.
    #
    # The password can be temporary or permanent. If it is temporary, the
    # user status enters the `FORCE_CHANGE_PASSWORD` state. When the user
    # next tries to sign in, the InitiateAuth/AdminInitiateAuth response
    # will contain the `NEW_PASSWORD_REQUIRED` challenge. If the user
    # doesn't sign in before it expires, the user won't be able to sign
    # in, and an administrator must reset their password.
    #
    # Once the user has set a new password, or the password is permanent,
    # the user status is set to `Confirmed`.
    #
    # `AdminSetUserPassword` can set a password for the user profile that
    # Amazon Cognito creates for third-party federated users. When you set a
    # password, the federated user's status changes from
    # `EXTERNAL_PROVIDER` to `CONFIRMED`. A user in this state can sign in
    # as a federated user, and initiate authentication flows in the API like
    # a linked native user. They can also modify their password and
    # attributes in token-authenticated API requests like `ChangePassword`
    # and `UpdateUserAttributes`. As a best security practice and to keep
    # users in sync with your external IdP, don't set passwords on
    # federated user profiles. To set up a federated user for native sign-in
    # with a linked native user, refer to [Linking federated users to an
    # existing user profile][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to set the user's
    #   password.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :password
    #   The password for the user.
    #
    # @option params [Boolean] :permanent
    #   `True` if the password is permanent, `False` if it is temporary.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_password({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     password: "PasswordType", # required
    #     permanent: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserPassword AWS API Documentation
    #
    # @overload admin_set_user_password(params = {})
    # @param [Hash] params ({})
    def admin_set_user_password(params = {}, options = {})
      req = build_request(:admin_set_user_password, params)
      req.send_request(options)
    end

    # *This action is no longer supported.* You can use it to configure only
    # SMS MFA. You can't use it to configure time-based one-time password
    # (TOTP) software token MFA. To configure either type of MFA, use
    # [AdminSetUserMFAPreference][1] instead.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the user whose options you're
    #   setting.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, Array<Types::MFAOptionType>] :mfa_options
    #   You can use this parameter only to set an SMS configuration that uses
    #   SMS for delivery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_settings({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS", # accepts SMS, EMAIL
    #         attribute_name: "AttributeNameType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettings AWS API Documentation
    #
    # @overload admin_set_user_settings(params = {})
    # @param [Hash] params ({})
    def admin_set_user_settings(params = {}, options = {})
      req = build_request(:admin_set_user_settings, params)
      req.send_request(options)
    end

    # Provides feedback for an authentication event indicating if it was
    # from a valid user. This feedback is used for improving the risk
    # evaluation decision for the user pool as part of Amazon Cognito
    # advanced security.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :event_id
    #   The authentication event ID.
    #
    # @option params [required, String] :feedback_value
    #   The authentication event feedback value. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level of
    #   risk. When you provide a `FeedbackValue` value of `invalid`, you tell
    #   Amazon Cognito that you don't trust a user session, or you don't
    #   believe that Amazon Cognito evaluated a high-enough risk level.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_auth_event_feedback({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     event_id: "EventIdType", # required
    #     feedback_value: "Valid", # required, accepts Valid, Invalid
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateAuthEventFeedback AWS API Documentation
    #
    # @overload admin_update_auth_event_feedback(params = {})
    # @param [Hash] params ({})
    def admin_update_auth_event_feedback(params = {}, options = {})
      req = build_request(:admin_update_auth_event_feedback, params)
      req.send_request(options)
    end

    # Updates the device status as an administrator.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [String] :device_remembered_status
    #   The status indicating whether a device has been remembered or not.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_device_status({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered", # accepts remembered, not_remembered
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatus AWS API Documentation
    #
    # @overload admin_update_device_status(params = {})
    # @param [Hash] params ({})
    def admin_update_device_status(params = {}, options = {})
      req = build_request(:admin_update_device_status, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # Updates the specified user's attributes, including developer
    # attributes, as an administrator. Works on any user. To delete an
    # attribute from your user, submit the attribute in your API request
    # with a blank value.
    #
    # For custom attributes, you must prepend the `custom:` prefix to the
    # attribute name.
    #
    # In addition to updating user attributes, this API can also be used to
    # mark phone and email as verified.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to update user
    #   attributes.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   If your user pool requires verification before Amazon Cognito updates
    #   an attribute value that you specify in this request, Amazon Cognito
    #   doesn’t immediately update the value of that attribute. After your
    #   user receives and responds to a verification message to verify the new
    #   value, Amazon Cognito updates the attribute value. Your user can sign
    #   in and receive messages with the original attribute value until they
    #   verify the new value.
    #
    #   To update the value of an attribute that requires verification in the
    #   same API request, include the `email_verified` or
    #   `phone_number_verified` attribute, with a value of `true`. If you set
    #   the `email_verified` or `phone_number_verified` value for an `email`
    #   or `phone_number` attribute that requires verification to `true`,
    #   Amazon Cognito doesn’t send a verification message to your user.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminUpdateUserAttributes API action,
    #   Amazon Cognito invokes the function that is assigned to the *custom
    #   message* trigger. When Amazon Cognito invokes this function, it passes
    #   a JSON payload, which the function receives as input. This payload
    #   contains a `clientMetadata` attribute, which provides the data that
    #   you assigned to the ClientMetadata parameter in your
    #   AdminUpdateUserAttributes request. In your function code in Lambda,
    #   you can process the `clientMetadata` value to enhance your workflow
    #   for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_user_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributes AWS API Documentation
    #
    # @overload admin_update_user_attributes(params = {})
    # @param [Hash] params ({})
    def admin_update_user_attributes(params = {}, options = {})
      req = build_request(:admin_update_user_attributes, params)
      req.send_request(options)
    end

    # Invalidates the identity, access, and refresh tokens that Amazon
    # Cognito issued to a user. Call this operation with your administrative
    # credentials when your user signs out of your app. This results in the
    # following behavior.
    #
    # * Amazon Cognito no longer accepts *token-authorized* user operations
    #   that you authorize with a signed-out user's access tokens. For more
    #   information, see [Using the Amazon Cognito user pools API and user
    #   pool endpoints][1].
    #
    #   Amazon Cognito returns an `Access Token has been revoked` error when
    #   your app attempts to authorize a user pools API request with a
    #   revoked access token that contains the scope
    #   `aws.cognito.signin.user.admin`.
    #
    # * Amazon Cognito no longer accepts a signed-out user's ID token in a
    #   [GetId ][2] request to an identity pool with `ServerSideTokenCheck`
    #   enabled for its user pool IdP configuration in
    #   [CognitoIdentityProvider][3].
    #
    # * Amazon Cognito no longer accepts a signed-out user's refresh tokens
    #   in refresh requests.
    #
    # Other requests might be valid until your user's token expires.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][4]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][1]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
    # [3]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_user_global_sign_out({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOut AWS API Documentation
    #
    # @overload admin_user_global_sign_out(params = {})
    # @param [Hash] params ({})
    def admin_user_global_sign_out(params = {}, options = {})
      req = build_request(:admin_user_global_sign_out, params)
      req.send_request(options)
    end

    # Begins setup of time-based one-time password (TOTP) multi-factor
    # authentication (MFA) for a user, with a unique private key that Amazon
    # Cognito generates and returns in the API response. You can authorize
    # an `AssociateSoftwareToken` request with either the user's access
    # token, or a session string from a challenge response that you received
    # from Amazon Cognito.
    #
    # <note markdown="1"> Amazon Cognito disassociates an existing software token when you
    # verify the new token in a [ VerifySoftwareToken][1] API request. If
    # you don't verify the software token and your user pool doesn't
    # require MFA, the user can then authenticate with user name and
    # password credentials alone. If your user pool requires TOTP MFA,
    # Amazon Cognito generates an `MFA_SETUP` or `SOFTWARE_TOKEN_SETUP`
    # challenge each time your user signs in. Complete setup with
    # `AssociateSoftwareToken` and `VerifySoftwareToken`.
    #
    #  After you set up software token MFA for your user, Amazon Cognito
    # generates a `SOFTWARE_TOKEN_MFA` challenge when they authenticate.
    # Respond to this challenge with your user's TOTP.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   software token you want to generate.
    #
    # @option params [String] :session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. This allows authentication of the user as part
    #   of the MFA setup process.
    #
    # @return [Types::AssociateSoftwareTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSoftwareTokenResponse#secret_code #secret_code} => String
    #   * {Types::AssociateSoftwareTokenResponse#session #session} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_software_token({
    #     access_token: "TokenModelType",
    #     session: "SessionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.secret_code #=> String
    #   resp.session #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareToken AWS API Documentation
    #
    # @overload associate_software_token(params = {})
    # @param [Hash] params ({})
    def associate_software_token(params = {}, options = {})
      req = build_request(:associate_software_token, params)
      req.send_request(options)
    end

    # Changes the password for a specified user in a user pool.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :previous_password
    #   The old password.
    #
    # @option params [required, String] :proposed_password
    #   The new password.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   password you want to change.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_password({
    #     previous_password: "PasswordType", # required
    #     proposed_password: "PasswordType", # required
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePassword AWS API Documentation
    #
    # @overload change_password(params = {})
    # @param [Hash] params ({})
    def change_password(params = {}, options = {})
      req = build_request(:change_password, params)
      req.send_request(options)
    end

    # Confirms tracking of the device. This API call is the call that begins
    # device tracking. For more information about device authentication, see
    # [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   device you want to confirm.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [Types::DeviceSecretVerifierConfigType] :device_secret_verifier_config
    #   The configuration of the device secret verifier.
    #
    # @option params [String] :device_name
    #   The device name.
    #
    # @return [Types::ConfirmDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmDeviceResponse#user_confirmation_necessary #user_confirmation_necessary} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_device({
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_secret_verifier_config: {
    #       password_verifier: "StringType",
    #       salt: "StringType",
    #     },
    #     device_name: "DeviceNameType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_confirmation_necessary #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDevice AWS API Documentation
    #
    # @overload confirm_device(params = {})
    # @param [Hash] params ({})
    def confirm_device(params = {}, options = {})
      req = build_request(:confirm_device, params)
      req.send_request(options)
    end

    # Allows a user to enter a confirmation code to reset a forgotten
    # password.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :client_id
    #   The app client ID of the app associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :confirmation_code
    #   The confirmation code from your user's request to reset their
    #   password. For more information, see [ForgotPassword][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html
    #
    # @option params [required, String] :password
    #   The new password that your user wants to set.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ConfirmForgotPassword` calls.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ConfirmForgotPassword API action, Amazon
    #   Cognito invokes the function that is assigned to the *post
    #   confirmation* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your
    #   ConfirmForgotPassword request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_forgot_password({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     password: "PasswordType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmForgotPassword AWS API Documentation
    #
    # @overload confirm_forgot_password(params = {})
    # @param [Hash] params ({})
    def confirm_forgot_password(params = {}, options = {})
      req = build_request(:confirm_forgot_password, params)
      req.send_request(options)
    end

    # This public API operation provides a code that Amazon Cognito sent to
    # your user when they signed up in your user pool via the [SignUp][1]
    # API operation. After your user enters their code, they confirm
    # ownership of the email address or phone number that they provided, and
    # their user account becomes active. Depending on your user pool
    # configuration, your users will receive their confirmation code in an
    # email or SMS message.
    #
    # Local users who signed up in your user pool are the only type of user
    # who can confirm sign-up with a code. Users who federate through an
    # external identity provider (IdP) have already been confirmed by their
    # IdP. Administrator-created users, users created with the
    # [AdminCreateUser][2] API operation, confirm their accounts when they
    # respond to their invitation email message and choose a password. They
    # do not receive a confirmation code. Instead, they receive a temporary
    # password.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][3].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SignUp.html
    # [2]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminCreateUser.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :client_id
    #   The ID of the app client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :confirmation_code
    #   The confirmation code sent by a user's request to confirm
    #   registration.
    #
    # @option params [Boolean] :force_alias_creation
    #   Boolean to be specified to force user confirmation irrespective of
    #   existing alias. By default set to `False`. If this parameter is set to
    #   `True` and the phone number/email used for sign up confirmation
    #   already exists as an alias with a different user, the API call will
    #   migrate the alias from the previous user to the newly created user
    #   being confirmed. If set to `False`, the API will throw an
    #   **AliasExistsException** error.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ConfirmSignUp` calls.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ConfirmSignUp API action, Amazon Cognito
    #   invokes the function that is assigned to the *post confirmation*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your ConfirmSignUp request. In your
    #   function code in Lambda, you can process the `clientMetadata` value to
    #   enhance your workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_sign_up({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     force_alias_creation: false,
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUp AWS API Documentation
    #
    # @overload confirm_sign_up(params = {})
    # @param [Hash] params ({})
    def confirm_sign_up(params = {}, options = {})
      req = build_request(:confirm_sign_up, params)
      req.send_request(options)
    end

    # Creates a new group in the specified user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :group_name
    #   The name of the group. Must be unique.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [String] :description
    #   A string containing the description of the group.
    #
    # @option params [String] :role_arn
    #   The role Amazon Resource Name (ARN) for the group.
    #
    # @option params [Integer] :precedence
    #   A non-negative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher or null
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN is given in
    #   the user's tokens for the `cognito:roles` and
    #   `cognito:preferred_role` claims.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with the
    #   same `Precedence` have the same role ARN, that role is used in the
    #   `cognito:preferred_role` claim in tokens for users in each group. If
    #   the two groups have different role ARNs, the `cognito:preferred_role`
    #   claim isn't set in users' tokens.
    #
    #   The default `Precedence` value is null. The maximum `Precedence` value
    #   is `2^31-1`.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Adds a configuration and trust relationship between a third-party
    # identity provider (IdP) and a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The IdP name.
    #
    # @option params [required, String] :provider_type
    #   The IdP type.
    #
    # @option params [required, Hash<String,String>] :provider_details
    #   The scopes, URLs, and identifiers for your external identity provider.
    #   The following examples describe the provider detail keys for each IdP
    #   type. These values and their schema are subject to change. Social IdP
    #   `authorize_scopes` values must match the values listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": \{
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" \}`
    #
    #     Describe response: `"ProviderDetails": \{
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" \}`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": \{
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL": "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" \}`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": \{
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #     "rsa-sha256" \}`
    #
    #     The value of `MetadataFile` must be the plaintext metadata document
    #     with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": \{ "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" \}`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": \{ "authorize_scopes":
    #     "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": \{ "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" \}`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": \{ "authorize_scopes":
    #     "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" \}`
    #
    #     Describe response: `"ProviderDetails": \{ "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #     profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" \}`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": \{ "authorize_scopes":
    #     "email name", "client_id": "com.example.cognito", "private_key":
    #     "1EXAMPLE", "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" \}`
    #
    #     Describe response: `"ProviderDetails": \{
    #     "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #     name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #     "client_id": "com.example.cognito", "key_id": "1EXAMPLE",
    #     "oidc_issuer": "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" \}`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": \{ "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret"
    #     \}`
    #
    #     Describe response: `"ProviderDetails": \{ "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" \}`
    #
    # @option params [Hash<String,String>] :attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes.
    #
    # @option params [Array<String>] :idp_identifiers
    #   A list of IdP identifiers.
    #
    # @return [Types::CreateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameTypeV2", # required
    #     provider_type: "SAML", # required, accepts SAML, Facebook, Google, LoginWithAmazon, SignInWithApple, OIDC
    #     provider_details: { # required
    #       "StringType" => "StringType",
    #     },
    #     attribute_mapping: {
    #       "AttributeMappingKeyType" => "StringType",
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProvider AWS API Documentation
    #
    # @overload create_identity_provider(params = {})
    # @param [Hash] params ({})
    def create_identity_provider(params = {}, options = {})
      req = build_request(:create_identity_provider, params)
      req.send_request(options)
    end

    # Creates a new OAuth2.0 resource server and defines custom scopes
    # within it.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier strings
    #   increase the size of your access tokens.
    #
    # @option params [required, String] :name
    #   A friendly name for the resource server.
    #
    # @option params [Array<Types::ResourceServerScopeType>] :scopes
    #   A list of scopes. Each scope is a key-value map with the keys `name`
    #   and `description`.
    #
    # @return [Types::CreateResourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceServerResponse#resource_server #resource_server} => Types::ResourceServerType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #     name: "ResourceServerNameType", # required
    #     scopes: [
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_server.user_pool_id #=> String
    #   resp.resource_server.identifier #=> String
    #   resp.resource_server.name #=> String
    #   resp.resource_server.scopes #=> Array
    #   resp.resource_server.scopes[0].scope_name #=> String
    #   resp.resource_server.scopes[0].scope_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateResourceServer AWS API Documentation
    #
    # @overload create_resource_server(params = {})
    # @param [Hash] params ({})
    def create_resource_server(params = {}, options = {})
      req = build_request(:create_resource_server, params)
      req.send_request(options)
    end

    # Creates a user import job.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :job_name
    #   The job name for the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :cloud_watch_logs_role_arn
    #   The role ARN for the Amazon CloudWatch Logs Logging role for the user
    #   import job.
    #
    # @return [Types::CreateUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_import_job({
    #     job_name: "UserImportJobNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     cloud_watch_logs_role_arn: "ArnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJob AWS API Documentation
    #
    # @overload create_user_import_job(params = {})
    # @param [Hash] params ({})
    def create_user_import_job(params = {}, options = {})
      req = build_request(:create_user_import_job, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # Creates a new Amazon Cognito user pool and sets the password policy
    # for the pool.
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :pool_name
    #   A string used to name the user pool.
    #
    # @option params [Types::UserPoolPolicyType] :policies
    #   The policies associated with the new user pool.
    #
    # @option params [String] :deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of your
    #   user pool. Before you can delete a user pool that you have protected
    #   against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool` API
    #   request, Amazon Cognito returns an `InvalidParameterException` error.
    #   To delete a protected user pool, send a new `DeleteUserPool` request
    #   after you deactivate deletion protection in an `UpdateUserPool` API
    #   request.
    #
    # @option params [Types::LambdaConfigType] :lambda_config
    #   The Lambda trigger configuration information for the new user pool.
    #
    #   <note markdown="1"> In a push model, event sources (such as Amazon S3 and custom
    #   applications) need permission to invoke a function. So you must make
    #   an extra call to add permission for these event sources to invoke your
    #   Lambda function.
    #
    #
    #
    #    For more information on using the Lambda API to add permission, see[
    #   AddPermission ][1].
    #
    #    For adding permission using the CLI, see[ add-permission ][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html
    #   [2]: https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   The attributes to be auto-verified. Possible values: **email**,
    #   **phone\_number**.
    #
    # @option params [Array<String>] :alias_attributes
    #   Attributes supported as an alias for this user pool. Possible values:
    #   **phone\_number**, **email**, or **preferred\_username**.
    #
    # @option params [Array<String>] :username_attributes
    #   Specifies whether a user can use an email address or phone number as a
    #   username when they sign up.
    #
    # @option params [String] :sms_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #
    # @option params [String] :email_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #
    # @option params [String] :email_verification_subject
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #
    # @option params [Types::VerificationMessageTemplateType] :verification_message_template
    #   The template for the verification message that the user sees when the
    #   app requests permission to access the user's information.
    #
    # @option params [String] :sms_authentication_message
    #   A string representing the SMS authentication message.
    #
    # @option params [String] :mfa_configuration
    #   Specifies MFA configuration details.
    #
    # @option params [Types::UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a user-pool
    #   setting that tells Amazon Cognito how to handle changes to the value
    #   of your users' email address and phone number attributes. For more
    #   information, see [ Verifying updates to email addresses and phone
    #   numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   The device-remembering configuration for a user pool. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature.
    #
    #    </note>
    #
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for messages from your user pool.
    #
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   The SMS configuration with the settings that your Amazon Cognito user
    #   pool must use to send an SMS message from your Amazon Web Services
    #   account through Amazon Simple Notification Service. To send SMS
    #   messages with Amazon SNS in the Amazon Web Services Region that you
    #   want, the Amazon Cognito user pool uses an Identity and Access
    #   Management (IAM) role in your Amazon Web Services account.
    #
    # @option params [Hash<String,String>] :user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #
    # @option params [Array<Types::SchemaAttributeType>] :schema
    #   An array of schema attributes for the new user pool. These attributes
    #   can be standard or custom attributes.
    #
    # @option params [Types::UserPoolAddOnsType] :user_pool_add_ons
    #   User pool add-ons. Contains settings for activation of advanced
    #   security features. To log user security information but take no
    #   action, set to `AUDIT`. To configure automatic security responses to
    #   risky traffic to your user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #
    # @option params [Types::UsernameConfigurationType] :username_configuration
    #   Case sensitivity on the username input for the selected sign-in
    #   option. When case sensitivity is set to `False` (case insensitive),
    #   users can sign in with any combination of capital and lowercase
    #   letters. For example, `username`, `USERNAME`, or `UserName`, or for
    #   email, `email@example.com` or `EMaiL@eXamplE.Com`. For most use cases,
    #   set case sensitivity to `False` (case insensitive) as a best practice.
    #   When usernames and email addresses are case insensitive, Amazon
    #   Cognito treats any variation in case as the same user, and prevents a
    #   case variation from being assigned to the same attribute for a
    #   different user.
    #
    #   This configuration is immutable after you set it. For more
    #   information, see [UsernameConfigurationType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html
    #
    # @option params [Types::AccountRecoverySettingType] :account_recovery_setting
    #   The available verified method a user can use to recover their password
    #   when they call `ForgotPassword`. You can use this setting to define a
    #   preferred method when a user has more than one method available. With
    #   this setting, SMS doesn't qualify for a valid password recovery
    #   mechanism if the user also has SMS multi-factor authentication (MFA)
    #   activated. In the absence of this setting, Amazon Cognito uses the
    #   legacy behavior to determine the recovery method where SMS is
    #   preferred through email.
    #
    # @return [Types::CreateUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolResponse#user_pool #user_pool} => Types::UserPoolType
    #
    #
    # @example Example: Example user pool with email and username sign-in
    #
    #   # The following example creates a user pool with all configurable properties set to an example value. The resulting user
    #   # pool allows sign-in with username or email address, has optional MFA, and has a Lambda function assigned to each
    #   # possible trigger.
    #
    #   resp = client.create_user_pool({
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           name: "verified_email", 
    #           priority: 1, 
    #         }, 
    #       ], 
    #     }, 
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false, 
    #       invite_message_template: {
    #         email_message: "Your username is {username} and temporary password is {####}.", 
    #         email_subject: "Your sign-in information", 
    #         sms_message: "Your username is {username} and temporary password is {####}.", 
    #       }, 
    #     }, 
    #     alias_attributes: [
    #       "email", 
    #     ], 
    #     auto_verified_attributes: [
    #       "email", 
    #     ], 
    #     deletion_protection: "ACTIVE", 
    #     device_configuration: {
    #       challenge_required_on_new_device: true, 
    #       device_only_remembered_on_user_prompt: true, 
    #     }, 
    #     email_configuration: {
    #       configuration_set: "my-test-ses-configuration-set", 
    #       email_sending_account: "DEVELOPER", 
    #       from: "support@example.com", 
    #       reply_to_email_address: "support@example.com", 
    #       source_arn: "arn:aws:ses:us-east-1:123456789012:identity/support@example.com", 
    #     }, 
    #     email_verification_message: "Your verification code is {####}.", 
    #     email_verification_subject: "Verify your email address", 
    #     lambda_config: {
    #       custom_email_sender: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         lambda_version: "V1_0", 
    #       }, 
    #       custom_message: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       custom_sms_sender: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         lambda_version: "V1_0", 
    #       }, 
    #       define_auth_challenge: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/a6c4f8e2-0c45-47db-925f-87854bc9e357", 
    #       post_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       post_confirmation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       pre_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       pre_sign_up: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       pre_token_generation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       user_migration: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       verify_auth_challenge_response: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #     }, 
    #     mfa_configuration: "OPTIONAL", 
    #     policies: {
    #       password_policy: {
    #         minimum_length: 6, 
    #         require_lowercase: true, 
    #         require_numbers: true, 
    #         require_symbols: true, 
    #         require_uppercase: true, 
    #         temporary_password_validity_days: 7, 
    #       }, 
    #     }, 
    #     pool_name: "my-test-user-pool", 
    #     schema: [
    #       {
    #         attribute_data_type: "Number", 
    #         developer_only_attribute: true, 
    #         mutable: true, 
    #         name: "mydev", 
    #         number_attribute_constraints: {
    #           max_value: "99", 
    #           min_value: "1", 
    #         }, 
    #         required: false, 
    #         string_attribute_constraints: {
    #           max_length: "99", 
    #           min_length: "1", 
    #         }, 
    #       }, 
    #     ], 
    #     sms_authentication_message: "Your verification code is {####}.", 
    #     sms_configuration: {
    #       external_id: "my-role-external-id", 
    #       sns_caller_arn: "arn:aws:iam::123456789012:role/service-role/test-cognito-SMS-Role", 
    #     }, 
    #     sms_verification_message: "Your verification code is {####}.", 
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: [
    #         "email", 
    #       ], 
    #     }, 
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF", 
    #     }, 
    #     user_pool_tags: {
    #       "my-test-tag-key" => "my-test-tag-key", 
    #     }, 
    #     username_configuration: {
    #       case_sensitive: true, 
    #     }, 
    #     verification_message_template: {
    #       default_email_option: "CONFIRM_WITH_CODE", 
    #       email_message: "Your confirmation code is {####}", 
    #       email_message_by_link: "Choose this link to {##verify your email##}", 
    #       email_subject: "Here is your confirmation code", 
    #       email_subject_by_link: "Here is your confirmation link", 
    #       sms_message: "Your confirmation code is {####}", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     user_pool: {
    #       account_recovery_setting: {
    #         recovery_mechanisms: [
    #           {
    #             name: "verified_email", 
    #             priority: 1, 
    #           }, 
    #         ], 
    #       }, 
    #       admin_create_user_config: {
    #         allow_admin_create_user_only: false, 
    #         invite_message_template: {
    #           email_message: "Your username is {username} and temporary password is {####}.", 
    #           email_subject: "Your sign-in information", 
    #           sms_message: "Your username is {username} and temporary password is {####}.", 
    #         }, 
    #         unused_account_validity_days: 7, 
    #       }, 
    #       alias_attributes: [
    #         "email", 
    #       ], 
    #       arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_EXAMPLE", 
    #       auto_verified_attributes: [
    #         "email", 
    #       ], 
    #       creation_date: Time.parse(1689721665.239), 
    #       deletion_protection: "ACTIVE", 
    #       device_configuration: {
    #         challenge_required_on_new_device: true, 
    #         device_only_remembered_on_user_prompt: true, 
    #       }, 
    #       email_configuration: {
    #         configuration_set: "my-test-ses-configuration-set", 
    #         email_sending_account: "DEVELOPER", 
    #         from: "support@example.com", 
    #         reply_to_email_address: "support@example.com", 
    #         source_arn: "arn:aws:ses:us-east-1:123456789012:identity/support@example.com", 
    #       }, 
    #       email_verification_message: "Your verification code is {####}.", 
    #       email_verification_subject: "Verify your email address", 
    #       estimated_number_of_users: 0, 
    #       id: "us-east-1_EXAMPLE", 
    #       lambda_config: {
    #         custom_email_sender: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #           lambda_version: "V1_0", 
    #         }, 
    #         custom_message: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         custom_sms_sender: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #           lambda_version: "V1_0", 
    #         }, 
    #         define_auth_challenge: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         kms_key_id: "arn:aws:kms:us-east-1:767671399759:key/4d43904c-8edf-4bb4-9fca-fb1a80e41cbe", 
    #         post_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         post_confirmation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         pre_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         pre_sign_up: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         pre_token_generation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         user_migration: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         verify_auth_challenge_response: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       }, 
    #       last_modified_date: Time.parse(1689721665.239), 
    #       mfa_configuration: "OPTIONAL", 
    #       name: "my-test-user-pool", 
    #       policies: {
    #         password_policy: {
    #           minimum_length: 6, 
    #           require_lowercase: true, 
    #           require_numbers: true, 
    #           require_symbols: true, 
    #           require_uppercase: true, 
    #           temporary_password_validity_days: 7, 
    #         }, 
    #       }, 
    #       schema_attributes: [
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: false, 
    #           name: "sub", 
    #           required: true, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "1", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "given_name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "family_name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "middle_name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "nickname", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "preferred_username", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "profile", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "picture", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "website", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "email", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "Boolean", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "email_verified", 
    #           required: false, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "gender", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "birthdate", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "10", 
    #             min_length: "10", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "zoneinfo", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "locale", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "phone_number", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "Boolean", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "phone_number_verifie", 
    #           required: false, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "address", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "Number", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "updated_at", 
    #           number_attribute_constraints: {
    #             min_value: "0", 
    #           }, 
    #           required: false, 
    #         }, 
    #         {
    #           attribute_data_type: "Number", 
    #           developer_only_attribute: true, 
    #           mutable: true, 
    #           name: "dev:custom:mydev", 
    #           number_attribute_constraints: {
    #             max_value: "99", 
    #             min_value: "1", 
    #           }, 
    #           required: false, 
    #         }, 
    #       ], 
    #       sms_authentication_message: "Your verification code is {####}.", 
    #       sms_configuration: {
    #         external_id: "my-role-external-id", 
    #         sns_caller_arn: "arn:aws:iam::123456789012:role/service-role/test-cognito-SMS-Role", 
    #         sns_region: "us-east-1", 
    #       }, 
    #       sms_verification_message: "Your verification code is {####}.", 
    #       user_attribute_update_settings: {
    #         attributes_require_verification_before_update: [
    #           "email", 
    #         ], 
    #       }, 
    #       user_pool_add_ons: {
    #         advanced_security_mode: "OFF", 
    #       }, 
    #       user_pool_tags: {
    #         "my-test-tag-key" => "my-test-tag-value", 
    #       }, 
    #       username_configuration: {
    #         case_sensitive: true, 
    #       }, 
    #       verification_message_template: {
    #         default_email_option: "CONFIRM_WITH_CODE", 
    #         email_message: "Your confirmation code is {####}", 
    #         email_message_by_link: "Choose this link to {##verify your email##}", 
    #         email_subject: "Here is your confirmation code", 
    #         email_subject_by_link: "Here is your confirmation link", 
    #         sms_message: "Your confirmation code is {####}", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool({
    #     pool_name: "UserPoolNameType", # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         password_history_size: 1,
    #         temporary_password_validity_days: 1,
    #       },
    #     },
    #     deletion_protection: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     lambda_config: {
    #       pre_sign_up: "ArnType",
    #       custom_message: "ArnType",
    #       post_confirmation: "ArnType",
    #       pre_authentication: "ArnType",
    #       post_authentication: "ArnType",
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #       pre_token_generation: "ArnType",
    #       user_migration: "ArnType",
    #       pre_token_generation_config: {
    #         lambda_version: "V1_0", # required, accepts V1_0, V2_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_sms_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       kms_key_id: "ArnType",
    #     },
    #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #     alias_attributes: ["phone_number"], # accepts phone_number, email, preferred_username
    #     username_attributes: ["phone_number"], # accepts phone_number, email
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     verification_message_template: {
    #       sms_message: "SmsVerificationMessageType",
    #       email_message: "EmailVerificationMessageType",
    #       email_subject: "EmailVerificationSubjectType",
    #       email_message_by_link: "EmailVerificationMessageByLinkType",
    #       email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #       default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #     },
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: ["phone_number"], # accepts phone_number, email
    #     },
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false,
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #       email_sending_account: "COGNITO_DEFAULT", # accepts COGNITO_DEFAULT, DEVELOPER
    #       from: "StringType",
    #       configuration_set: "SESConfigurationSet",
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "ArnType", # required
    #       external_id: "StringType",
    #       sns_region: "RegionCodeType",
    #     },
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType",
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       },
    #     },
    #     schema: [
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType",
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType",
    #         },
    #       },
    #     ],
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #       advanced_security_additional_flows: {
    #         custom_auth_mode: "AUDIT", # accepts AUDIT, ENFORCED
    #       },
    #     },
    #     username_configuration: {
    #       case_sensitive: false, # required
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: "verified_email", # required, accepts verified_email, verified_phone_number, admin_only
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool.id #=> String
    #   resp.user_pool.name #=> String
    #   resp.user_pool.policies.password_policy.minimum_length #=> Integer
    #   resp.user_pool.policies.password_policy.require_uppercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_lowercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_numbers #=> Boolean
    #   resp.user_pool.policies.password_policy.require_symbols #=> Boolean
    #   resp.user_pool.policies.password_policy.password_history_size #=> Integer
    #   resp.user_pool.policies.password_policy.temporary_password_validity_days #=> Integer
    #   resp.user_pool.deletion_protection #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.user_pool.lambda_config.pre_sign_up #=> String
    #   resp.user_pool.lambda_config.custom_message #=> String
    #   resp.user_pool.lambda_config.post_confirmation #=> String
    #   resp.user_pool.lambda_config.pre_authentication #=> String
    #   resp.user_pool.lambda_config.post_authentication #=> String
    #   resp.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.user_pool.lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pool.lambda_config.pre_token_generation #=> String
    #   resp.user_pool.lambda_config.user_migration #=> String
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_version #=> String, one of "V1_0", "V2_0"
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.kms_key_id #=> String
    #   resp.user_pool.status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pool.last_modified_date #=> Time
    #   resp.user_pool.creation_date #=> Time
    #   resp.user_pool.schema_attributes #=> Array
    #   resp.user_pool.schema_attributes[0].name #=> String
    #   resp.user_pool.schema_attributes[0].attribute_data_type #=> String, one of "String", "Number", "DateTime", "Boolean"
    #   resp.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
    #   resp.user_pool.schema_attributes[0].mutable #=> Boolean
    #   resp.user_pool.schema_attributes[0].required #=> Boolean
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
    #   resp.user_pool.auto_verified_attributes #=> Array
    #   resp.user_pool.auto_verified_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.alias_attributes #=> Array
    #   resp.user_pool.alias_attributes[0] #=> String, one of "phone_number", "email", "preferred_username"
    #   resp.user_pool.username_attributes #=> Array
    #   resp.user_pool.username_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.sms_verification_message #=> String
    #   resp.user_pool.email_verification_message #=> String
    #   resp.user_pool.email_verification_subject #=> String
    #   resp.user_pool.verification_message_template.sms_message #=> String
    #   resp.user_pool.verification_message_template.email_message #=> String
    #   resp.user_pool.verification_message_template.email_subject #=> String
    #   resp.user_pool.verification_message_template.email_message_by_link #=> String
    #   resp.user_pool.verification_message_template.email_subject_by_link #=> String
    #   resp.user_pool.verification_message_template.default_email_option #=> String, one of "CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"
    #   resp.user_pool.sms_authentication_message #=> String
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update #=> Array
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #   resp.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.user_pool.estimated_number_of_users #=> Integer
    #   resp.user_pool.email_configuration.source_arn #=> String
    #   resp.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.user_pool.email_configuration.email_sending_account #=> String, one of "COGNITO_DEFAULT", "DEVELOPER"
    #   resp.user_pool.email_configuration.from #=> String
    #   resp.user_pool.email_configuration.configuration_set #=> String
    #   resp.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.user_pool.sms_configuration.external_id #=> String
    #   resp.user_pool.sms_configuration.sns_region #=> String
    #   resp.user_pool.user_pool_tags #=> Hash
    #   resp.user_pool.user_pool_tags["TagKeysType"] #=> String
    #   resp.user_pool.sms_configuration_failure #=> String
    #   resp.user_pool.email_configuration_failure #=> String
    #   resp.user_pool.domain #=> String
    #   resp.user_pool.custom_domain #=> String
    #   resp.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #   resp.user_pool.user_pool_add_ons.advanced_security_mode #=> String, one of "OFF", "AUDIT", "ENFORCED"
    #   resp.user_pool.user_pool_add_ons.advanced_security_additional_flows.custom_auth_mode #=> String, one of "AUDIT", "ENFORCED"
    #   resp.user_pool.username_configuration.case_sensitive #=> Boolean
    #   resp.user_pool.arn #=> String
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms #=> Array
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].priority #=> Integer
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].name #=> String, one of "verified_email", "verified_phone_number", "admin_only"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPool AWS API Documentation
    #
    # @overload create_user_pool(params = {})
    # @param [Hash] params ({})
    def create_user_pool(params = {}, options = {})
      req = build_request(:create_user_pool, params)
      req.send_request(options)
    end

    # Creates the user pool client.
    #
    # When you create a new user pool client, token revocation is
    # automatically activated. For more information about revoking tokens,
    # see [RevokeToken][1].
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to create a user
    #   pool client.
    #
    # @option params [required, String] :client_name
    #   The client name for the user pool client you would like to create.
    #
    # @option params [Boolean] :generate_secret
    #   Boolean to specify whether you want to generate a secret for the user
    #   pool client being created.
    #
    # @option params [Integer] :refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request is
    #   days. You can't set `RefreshTokenValidity` to 0. If you do, Amazon
    #   Cognito overrides the value with the default value of 30 days. *Valid
    #   range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #
    # @option params [Integer] :access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`, set
    #   a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #
    # @option params [Integer] :id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity` as
    #   `seconds`, `minutes`, `hours`, or `days`, set a `TokenValidityUnits`
    #   value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #
    # @option params [Types::TokenValidityUnitsType] :token_validity_units
    #   The units in which the validity times are represented. The default
    #   unit for RefreshToken is days, and default for ID and access tokens
    #   are hours.
    #
    # @option params [Array<String>] :read_attributes
    #   The list of user attributes that you want your app client to have
    #   read-only access to. After your user authenticates in your app, their
    #   access token authorizes them to read their own attribute value for any
    #   attribute in this list. An example of this kind of activity is when
    #   your user selects a link to view their profile information. Your app
    #   makes a [GetUser][1] API request to retrieve and display your user's
    #   profile data.
    #
    #   When you don't specify the `ReadAttributes` for your app client, your
    #   app can read the values of `email_verified`, `phone_number_verified`,
    #   and the Standard attributes of your user pool. When your user pool has
    #   read access to these default attributes, `ReadAttributes` doesn't
    #   return any information. Amazon Cognito only populates `ReadAttributes`
    #   in the API response if you have specified your own custom set of read
    #   attributes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_GetUser.html
    #
    # @option params [Array<String>] :write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list. An example of this kind of
    #   activity is when you present your user with a form to update their
    #   profile information and they change their last name. Your app then
    #   makes an [UpdateUserAttributes][1] API request and sets `family_name`
    #   to the new value.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your user
    #   pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information. Amazon
    #   Cognito only populates `WriteAttributes` in the API response if you
    #   have specified your own custom set of write attributes.
    #
    #   If your app client allows users to sign in through an IdP, this array
    #   must include all attributes that you have mapped to IdP attributes.
    #   Amazon Cognito updates mapped attributes when users sign in to your
    #   application through an IdP. If your app client does not have write
    #   access to a mapped attribute, Amazon Cognito throws an error when it
    #   tries to update the attribute. For more information, see [Specifying
    #   IdP Attribute Mappings for Your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UpdateUserAttributes.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   The authentication flows that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a user
    #   name and Secure Remote Password (SRP), a user name and password, or a
    #   custom authentication process that you define with Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your user
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`, and
    #   `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito in
    #     the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #
    # @option params [Array<String>] :supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #
    # @option params [Array<String>] :callback_urls
    #   A list of allowed redirect (callback) URLs for the IdPs.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #
    # @option params [Array<String>] :logout_urls
    #   A list of allowed logout URLs for the IdPs.
    #
    # @option params [String] :default_redirect_uri
    #   The default redirect URI. In app clients with one assigned IdP,
    #   replaces `redirect_uri` in authentication requests. Must be in the
    #   `CallbackURLs` list.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   For more information, see [Default redirect URI][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#cognito-user-pools-app-idp-settings-about
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   The OAuth grant types that you want your app client to generate. To
    #   create an app client that generates client credentials grants, you
    #   must add `client_credentials` as the only allowed OAuth flow.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token (and, optionally, ID token, based on scopes)
    #     directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly to
    #     a non-person user using a combination of the client ID and client
    #     secret.
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   The allowed OAuth scopes. Possible values provided by OAuth are
    #   `phone`, `email`, `openid`, and `profile`. Possible values provided by
    #   Amazon Web Services are `aws.cognito.signin.user.admin`. Custom scopes
    #   created in Resource Servers are also supported.
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 features in your user pool app client.
    #
    #   `AllowedOAuthFlowsUserPoolClient` must be `true` before you can
    #   configure the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use OAuth 2.0 features, configure one of these features in the
    #   Amazon Cognito console or set `AllowedOAuthFlowsUserPoolClient` to
    #   `true` in a `CreateUserPoolClient` or `UpdateUserPoolClient` API
    #   request. If you don't set a value for
    #   `AllowedOAuthFlowsUserPoolClient` in a request with the CLI or SDKs,
    #   it defaults to `false`.
    #
    # @option params [Types::AnalyticsConfigurationType] :analytics_configuration
    #   The user pool analytics configuration for collecting metrics and
    #   sending them to your Amazon Pinpoint campaign.
    #
    #   <note markdown="1"> In Amazon Web Services Regions where Amazon Pinpoint isn't available,
    #   user pools only support sending events to Amazon Pinpoint projects in
    #   Amazon Web Services Region us-east-1. In Regions where Amazon Pinpoint
    #   is available, user pools support sending events to Amazon Pinpoint
    #   projects within that same Region.
    #
    #    </note>
    #
    # @option params [String] :prevent_user_existence_errors
    #   Errors and responses that you want Amazon Cognito APIs to return
    #   during authentication, account confirmation, and password recovery
    #   when the user doesn't exist in the user pool. When set to `ENABLED`
    #   and the user doesn't exist, authentication returns an error
    #   indicating either the username or password was incorrect. Account
    #   confirmation and password recovery return a response indicating a code
    #   was sent to a simulated destination. When set to `LEGACY`, those APIs
    #   return a `UserNotFoundException` exception if the user doesn't exist
    #   in the user pool.
    #
    #   Valid values include:
    #
    #   * `ENABLED` - This prevents user existence-related errors.
    #
    #   * `LEGACY` - This represents the early behavior of Amazon Cognito
    #     where user existence related errors aren't prevented.
    #
    #   Defaults to `LEGACY` when you don't provide a value.
    #
    # @option params [Boolean] :enable_token_revocation
    #   Activates or deactivates token revocation. For more information about
    #   revoking tokens, see [RevokeToken][1].
    #
    #   If you don't include this parameter, token revocation is
    #   automatically activated for the new user pool client.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    #
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   Activates the propagation of additional user context data. For more
    #   information about propagation of user context data, see [ Adding
    #   advanced security to a user pool][1]. If you don’t include this
    #   parameter, you can't send device fingerprint information, including
    #   source IP address, to Amazon Cognito advanced security. You can only
    #   activate `EnablePropagateAdditionalUserContextData` in an app client
    #   that has a client secret.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #
    # @option params [Integer] :auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #
    # @return [Types::CreateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    #
    # @example Example: Example user pool app client with email and username sign-in
    #
    #   # The following example creates an app client with all configurable properties set to an example value. The resulting user
    #   # pool client connects to an analytics client, allows sign-in with username and password, and has two external identity
    #   # providers associated with it.
    #
    #   resp = client.create_user_pool_client({
    #     access_token_validity: 6, 
    #     allowed_o_auth_flows: [
    #       "code", 
    #     ], 
    #     allowed_o_auth_flows_user_pool_client: true, 
    #     allowed_o_auth_scopes: [
    #       "aws.cognito.signin.user.admin", 
    #       "openid", 
    #     ], 
    #     analytics_configuration: {
    #       application_id: "d70b2ba36a8c4dc5a04a0451a31a1e12", 
    #       external_id: "my-external-id", 
    #       role_arn: "arn:aws:iam::123456789012:role/test-cognitouserpool-role", 
    #       user_data_shared: true, 
    #     }, 
    #     callback_urls: [
    #       "https://example.com", 
    #       "http://localhost", 
    #       "myapp://example", 
    #     ], 
    #     client_name: "my-test-app-client", 
    #     default_redirect_uri: "https://example.com", 
    #     explicit_auth_flows: [
    #       "ALLOW_ADMIN_USER_PASSWORD_AUTH", 
    #       "ALLOW_USER_PASSWORD_AUTH", 
    #       "ALLOW_REFRESH_TOKEN_AUTH", 
    #     ], 
    #     generate_secret: true, 
    #     id_token_validity: 6, 
    #     logout_urls: [
    #       "https://example.com/logout", 
    #     ], 
    #     prevent_user_existence_errors: "ENABLED", 
    #     read_attributes: [
    #       "email", 
    #       "address", 
    #       "preferred_username", 
    #     ], 
    #     refresh_token_validity: 6, 
    #     supported_identity_providers: [
    #       "SignInWithApple", 
    #       "MySSO", 
    #     ], 
    #     token_validity_units: {
    #       access_token: "hours", 
    #       id_token: "minutes", 
    #       refresh_token: "days", 
    #     }, 
    #     user_pool_id: "us-east-1_EXAMPLE", 
    #     write_attributes: [
    #       "family_name", 
    #       "email", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     user_pool_client: {
    #       access_token_validity: 6, 
    #       allowed_o_auth_flows: [
    #         "code", 
    #       ], 
    #       allowed_o_auth_flows_user_pool_client: true, 
    #       allowed_o_auth_scopes: [
    #         "aws.cognito.signin.user.admin", 
    #         "openid", 
    #       ], 
    #       analytics_configuration: {
    #         application_id: "d70b2ba36a8c4dc5a04a0451a31a1e12", 
    #         external_id: "my-external-id", 
    #         role_arn: "arn:aws:iam::123456789012:role/test-cognitouserpool-role", 
    #         user_data_shared: true, 
    #       }, 
    #       auth_session_validity: 3, 
    #       callback_urls: [
    #         "https://example.com", 
    #         "http://localhost", 
    #         "myapp://example", 
    #       ], 
    #       client_id: "26cb2c60kq7nbmas7rbme9b6pp", 
    #       client_name: "my-test-app-client", 
    #       client_secret: "13ka4h7u28d9oo44tqpq9djqsfvhvu8rk4d2ighvpu0k8fj1c2r9", 
    #       creation_date: Time.parse(1689885426.107), 
    #       default_redirect_uri: "https://example.com", 
    #       enable_propagate_additional_user_context_data: false, 
    #       enable_token_revocation: true, 
    #       explicit_auth_flows: [
    #         "ALLOW_USER_PASSWORD_AUTH", 
    #         "ALLOW_ADMIN_USER_PASSWORD_AUTH", 
    #         "ALLOW_REFRESH_TOKEN_AUTH", 
    #       ], 
    #       id_token_validity: 6, 
    #       last_modified_date: Time.parse(1689885426.107), 
    #       logout_urls: [
    #         "https://example.com/logout", 
    #       ], 
    #       prevent_user_existence_errors: "ENABLED", 
    #       read_attributes: [
    #         "address", 
    #         "preferred_username", 
    #         "email", 
    #       ], 
    #       refresh_token_validity: 6, 
    #       supported_identity_providers: [
    #         "SignInWithApple", 
    #         "MySSO", 
    #       ], 
    #       token_validity_units: {
    #         access_token: "hours", 
    #         id_token: "minutes", 
    #         refresh_token: "days", 
    #       }, 
    #       user_pool_id: "us-east-1_EXAMPLE", 
    #       write_attributes: [
    #         "family_name", 
    #         "email", 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_name: "ClientNameType", # required
    #     generate_secret: false,
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: "seconds", # accepts seconds, minutes, hours, days
    #       id_token: "seconds", # accepts seconds, minutes, hours, days
    #       refresh_token: "seconds", # accepts seconds, minutes, hours, days
    #     },
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_urls: ["RedirectUrlType"],
    #     logout_urls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: "HexStringType",
    #       application_arn: "ArnType",
    #       role_arn: "ArnType",
    #       external_id: "StringType",
    #       user_data_shared: false,
    #     },
    #     prevent_user_existence_errors: "LEGACY", # accepts LEGACY, ENABLED
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false,
    #     auth_session_validity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.access_token_validity #=> Integer
    #   resp.user_pool_client.id_token_validity #=> Integer
    #   resp.user_pool_client.token_validity_units.access_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.id_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.refresh_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.user_pool_client.prevent_user_existence_errors #=> String, one of "LEGACY", "ENABLED"
    #   resp.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #   resp.user_pool_client.auth_session_validity #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClient AWS API Documentation
    #
    # @overload create_user_pool_client(params = {})
    # @param [Hash] params ({})
    def create_user_pool_client(params = {}, options = {})
      req = build_request(:create_user_pool_client, params)
      req.send_request(options)
    end

    # Creates a new domain for a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [Types::CustomDomainConfigType] :custom_domain_config
    #   The configuration for a custom domain that hosts the sign-up and
    #   sign-in webpages for your application.
    #
    #   Provide this parameter only if you want to use a custom domain for
    #   your user pool. Otherwise, you can exclude this parameter and use the
    #   Amazon Cognito hosted domain instead.
    #
    #   For more information about the hosted domain and custom domains, see
    #   [Configuring a User Pool Domain][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html
    #
    # @return [Types::CreateUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolDomainResponse#cloud_front_domain #cloud_front_domain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     custom_domain_config: {
    #       certificate_arn: "ArnType", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_domain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomain AWS API Documentation
    #
    # @overload create_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def create_user_pool_domain(params = {}, options = {})
      req = build_request(:create_user_pool_domain, params)
      req.send_request(options)
    end

    # Deletes a group.
    #
    # Calling this action requires developer credentials.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes an IdP for a user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The IdP name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteIdentityProvider AWS API Documentation
    #
    # @overload delete_identity_provider(params = {})
    # @param [Hash] params ({})
    def delete_identity_provider(params = {}, options = {})
      req = build_request(:delete_identity_provider, params)
      req.send_request(options)
    end

    # Deletes a resource server.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that hosts the resource server.
    #
    # @option params [required, String] :identifier
    #   The identifier for the resource server.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteResourceServer AWS API Documentation
    #
    # @overload delete_resource_server(params = {})
    # @param [Hash] params ({})
    def delete_resource_server(params = {}, options = {})
      req = build_request(:delete_resource_server, params)
      req.send_request(options)
    end

    # Allows a user to delete their own user profile.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose user
    #   profile you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes the attributes for a user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, Array<String>] :user_attribute_names
    #   An array of strings representing the user attribute names you want to
    #   delete.
    #
    #   For custom attributes, you must prependattach the `custom:` prefix to
    #   the front of the attribute name.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   attributes you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_attributes({
    #     user_attribute_names: ["AttributeNameType"], # required
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributes AWS API Documentation
    #
    # @overload delete_user_attributes(params = {})
    # @param [Hash] params ({})
    def delete_user_attributes(params = {}, options = {})
      req = build_request(:delete_user_attributes, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Cognito user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPool AWS API Documentation
    #
    # @overload delete_user_pool(params = {})
    # @param [Hash] params ({})
    def delete_user_pool(params = {}, options = {})
      req = build_request(:delete_user_pool, params)
      req.send_request(options)
    end

    # Allows the developer to delete the user pool client.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to delete the
    #   client.
    #
    # @option params [required, String] :client_id
    #   The app client ID of the app associated with the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolClient AWS API Documentation
    #
    # @overload delete_user_pool_client(params = {})
    # @param [Hash] params ({})
    def delete_user_pool_client(params = {}, options = {})
      req = build_request(:delete_user_pool_client, params)
      req.send_request(options)
    end

    # Deletes a domain for a user pool.
    #
    # @option params [required, String] :domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomain AWS API Documentation
    #
    # @overload delete_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def delete_user_pool_domain(params = {}, options = {})
      req = build_request(:delete_user_pool_domain, params)
      req.send_request(options)
    end

    # Gets information about a specific IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The IdP name.
    #
    # @return [Types::DescribeIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProvider AWS API Documentation
    #
    # @overload describe_identity_provider(params = {})
    # @param [Hash] params ({})
    def describe_identity_provider(params = {}, options = {})
      req = build_request(:describe_identity_provider, params)
      req.send_request(options)
    end

    # Describes a resource server.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that hosts the resource server.
    #
    # @option params [required, String] :identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier strings
    #   increase the size of your access tokens.
    #
    # @return [Types::DescribeResourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceServerResponse#resource_server #resource_server} => Types::ResourceServerType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_server.user_pool_id #=> String
    #   resp.resource_server.identifier #=> String
    #   resp.resource_server.name #=> String
    #   resp.resource_server.scopes #=> Array
    #   resp.resource_server.scopes[0].scope_name #=> String
    #   resp.resource_server.scopes[0].scope_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeResourceServer AWS API Documentation
    #
    # @overload describe_resource_server(params = {})
    # @param [Hash] params ({})
    def describe_resource_server(params = {}, options = {})
      req = build_request(:describe_resource_server, params)
      req.send_request(options)
    end

    # Describes the risk configuration.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [String] :client_id
    #   The app client ID.
    #
    # @return [Types::DescribeRiskConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRiskConfigurationResponse#risk_configuration #risk_configuration} => Types::RiskConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_risk_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.risk_configuration.user_pool_id #=> String
    #   resp.risk_configuration.client_id #=> String
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter #=> Array
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter[0] #=> String, one of "SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"
    #   resp.risk_configuration.compromised_credentials_risk_configuration.actions.event_action #=> String, one of "BLOCK", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.from #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.reply_to #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.source_arn #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list[0] #=> String
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list[0] #=> String
    #   resp.risk_configuration.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeRiskConfiguration AWS API Documentation
    #
    # @overload describe_risk_configuration(params = {})
    # @param [Hash] params ({})
    def describe_risk_configuration(params = {}, options = {})
      req = build_request(:describe_risk_configuration, params)
      req.send_request(options)
    end

    # Describes the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :job_id
    #   The job ID for the user import job.
    #
    # @return [Types::DescribeUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserImportJob AWS API Documentation
    #
    # @overload describe_user_import_job(params = {})
    # @param [Hash] params ({})
    def describe_user_import_job(params = {}, options = {})
      req = build_request(:describe_user_import_job, params)
      req.send_request(options)
    end

    # Returns the configuration information and metadata of the specified
    # user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #
    # @return [Types::DescribeUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolResponse#user_pool #user_pool} => Types::UserPoolType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool.id #=> String
    #   resp.user_pool.name #=> String
    #   resp.user_pool.policies.password_policy.minimum_length #=> Integer
    #   resp.user_pool.policies.password_policy.require_uppercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_lowercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_numbers #=> Boolean
    #   resp.user_pool.policies.password_policy.require_symbols #=> Boolean
    #   resp.user_pool.policies.password_policy.password_history_size #=> Integer
    #   resp.user_pool.policies.password_policy.temporary_password_validity_days #=> Integer
    #   resp.user_pool.deletion_protection #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.user_pool.lambda_config.pre_sign_up #=> String
    #   resp.user_pool.lambda_config.custom_message #=> String
    #   resp.user_pool.lambda_config.post_confirmation #=> String
    #   resp.user_pool.lambda_config.pre_authentication #=> String
    #   resp.user_pool.lambda_config.post_authentication #=> String
    #   resp.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.user_pool.lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pool.lambda_config.pre_token_generation #=> String
    #   resp.user_pool.lambda_config.user_migration #=> String
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_version #=> String, one of "V1_0", "V2_0"
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.kms_key_id #=> String
    #   resp.user_pool.status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pool.last_modified_date #=> Time
    #   resp.user_pool.creation_date #=> Time
    #   resp.user_pool.schema_attributes #=> Array
    #   resp.user_pool.schema_attributes[0].name #=> String
    #   resp.user_pool.schema_attributes[0].attribute_data_type #=> String, one of "String", "Number", "DateTime", "Boolean"
    #   resp.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
    #   resp.user_pool.schema_attributes[0].mutable #=> Boolean
    #   resp.user_pool.schema_attributes[0].required #=> Boolean
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
    #   resp.user_pool.auto_verified_attributes #=> Array
    #   resp.user_pool.auto_verified_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.alias_attributes #=> Array
    #   resp.user_pool.alias_attributes[0] #=> String, one of "phone_number", "email", "preferred_username"
    #   resp.user_pool.username_attributes #=> Array
    #   resp.user_pool.username_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.sms_verification_message #=> String
    #   resp.user_pool.email_verification_message #=> String
    #   resp.user_pool.email_verification_subject #=> String
    #   resp.user_pool.verification_message_template.sms_message #=> String
    #   resp.user_pool.verification_message_template.email_message #=> String
    #   resp.user_pool.verification_message_template.email_subject #=> String
    #   resp.user_pool.verification_message_template.email_message_by_link #=> String
    #   resp.user_pool.verification_message_template.email_subject_by_link #=> String
    #   resp.user_pool.verification_message_template.default_email_option #=> String, one of "CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"
    #   resp.user_pool.sms_authentication_message #=> String
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update #=> Array
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #   resp.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.user_pool.estimated_number_of_users #=> Integer
    #   resp.user_pool.email_configuration.source_arn #=> String
    #   resp.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.user_pool.email_configuration.email_sending_account #=> String, one of "COGNITO_DEFAULT", "DEVELOPER"
    #   resp.user_pool.email_configuration.from #=> String
    #   resp.user_pool.email_configuration.configuration_set #=> String
    #   resp.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.user_pool.sms_configuration.external_id #=> String
    #   resp.user_pool.sms_configuration.sns_region #=> String
    #   resp.user_pool.user_pool_tags #=> Hash
    #   resp.user_pool.user_pool_tags["TagKeysType"] #=> String
    #   resp.user_pool.sms_configuration_failure #=> String
    #   resp.user_pool.email_configuration_failure #=> String
    #   resp.user_pool.domain #=> String
    #   resp.user_pool.custom_domain #=> String
    #   resp.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #   resp.user_pool.user_pool_add_ons.advanced_security_mode #=> String, one of "OFF", "AUDIT", "ENFORCED"
    #   resp.user_pool.user_pool_add_ons.advanced_security_additional_flows.custom_auth_mode #=> String, one of "AUDIT", "ENFORCED"
    #   resp.user_pool.username_configuration.case_sensitive #=> Boolean
    #   resp.user_pool.arn #=> String
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms #=> Array
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].priority #=> Integer
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].name #=> String, one of "verified_email", "verified_phone_number", "admin_only"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPool AWS API Documentation
    #
    # @overload describe_user_pool(params = {})
    # @param [Hash] params ({})
    def describe_user_pool(params = {}, options = {})
      req = build_request(:describe_user_pool, params)
      req.send_request(options)
    end

    # Client method for returning the configuration information and metadata
    # of the specified user pool app client.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #
    # @option params [required, String] :client_id
    #   The app client ID of the app associated with the user pool.
    #
    # @return [Types::DescribeUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.access_token_validity #=> Integer
    #   resp.user_pool_client.id_token_validity #=> Integer
    #   resp.user_pool_client.token_validity_units.access_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.id_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.refresh_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.user_pool_client.prevent_user_existence_errors #=> String, one of "LEGACY", "ENABLED"
    #   resp.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #   resp.user_pool_client.auth_session_validity #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolClient AWS API Documentation
    #
    # @overload describe_user_pool_client(params = {})
    # @param [Hash] params ({})
    def describe_user_pool_client(params = {}, options = {})
      req = build_request(:describe_user_pool_client, params)
      req.send_request(options)
    end

    # Gets information about a domain.
    #
    # @option params [required, String] :domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #
    # @return [Types::DescribeUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolDomainResponse#domain_description #domain_description} => Types::DomainDescriptionType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_domain({
    #     domain: "DomainType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_description.user_pool_id #=> String
    #   resp.domain_description.aws_account_id #=> String
    #   resp.domain_description.domain #=> String
    #   resp.domain_description.s3_bucket #=> String
    #   resp.domain_description.cloud_front_distribution #=> String
    #   resp.domain_description.version #=> String
    #   resp.domain_description.status #=> String, one of "CREATING", "DELETING", "UPDATING", "ACTIVE", "FAILED"
    #   resp.domain_description.custom_domain_config.certificate_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomain AWS API Documentation
    #
    # @overload describe_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def describe_user_pool_domain(params = {}, options = {})
      req = build_request(:describe_user_pool_domain, params)
      req.send_request(options)
    end

    # Forgets the specified device. For more information about device
    # authentication, see [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   registered device you want to forget.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forget_device({
    #     access_token: "TokenModelType",
    #     device_key: "DeviceKeyType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgetDevice AWS API Documentation
    #
    # @overload forget_device(params = {})
    # @param [Hash] params ({})
    def forget_device(params = {}, options = {})
      req = build_request(:forget_device, params)
      req.send_request(options)
    end

    # Calling this API causes a message to be sent to the end user with a
    # confirmation code that is required to change the user's password. For
    # the `Username` parameter, you can use the username or user alias. The
    # method used to send the confirmation code is sent according to the
    # specified AccountRecoverySetting. For more information, see
    # [Recovering User Accounts][1] in the *Amazon Cognito Developer Guide*.
    # To use the confirmation code for resetting the password, call
    # [ConfirmForgotPassword][2].
    #
    # If neither a verified phone number nor a verified email exists, this
    # API returns `InvalidParameterException`. If your app client has a
    # client secret and you don't provide a `SECRET_HASH` parameter, this
    # API returns `NotAuthorizedException`.
    #
    # To use this API operation, your user pool must have self-service
    # account recovery configured. Use [AdminSetUserPassword][3] if you
    # manage passwords as an administrator.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][4].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][5]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][6] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html
    # [2]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html
    # [3]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [5]: https://console.aws.amazon.com/pinpoint/home/
    # [6]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `ForgotPassword` calls.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ForgotPassword API action, Amazon Cognito
    #   invokes any functions that are assigned to the following triggers:
    #   *pre sign-up*, *custom message*, and *user migration*. When Amazon
    #   Cognito invokes any of these functions, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your ForgotPassword request. In
    #   your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::ForgotPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ForgotPasswordResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forgot_password({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     username: "UsernameType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPassword AWS API Documentation
    #
    # @overload forgot_password(params = {})
    # @param [Hash] params ({})
    def forgot_password(params = {}, options = {})
      req = build_request(:forgot_password, params)
      req.send_request(options)
    end

    # Gets the header information for the comma-separated value (CSV) file
    # to be used as input for the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are to be imported
    #   into.
    #
    # @return [Types::GetCSVHeaderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCSVHeaderResponse#user_pool_id #user_pool_id} => String
    #   * {Types::GetCSVHeaderResponse#csv_header #csv_header} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_csv_header({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_id #=> String
    #   resp.csv_header #=> Array
    #   resp.csv_header[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeader AWS API Documentation
    #
    # @overload get_csv_header(params = {})
    # @param [Hash] params ({})
    def get_csv_header(params = {}, options = {})
      req = build_request(:get_csv_header, params)
      req.send_request(options)
    end

    # Gets the device. For more information about device authentication, see
    # [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   device information you want to request.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device #device} => Types::DeviceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     device_key: "DeviceKeyType", # required
    #     access_token: "TokenModelType",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_key #=> String
    #   resp.device.device_attributes #=> Array
    #   resp.device.device_attributes[0].name #=> String
    #   resp.device.device_attributes[0].value #=> String
    #   resp.device.device_create_date #=> Time
    #   resp.device.device_last_modified_date #=> Time
    #   resp.device.device_last_authenticated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Gets a group.
    #
    # Calling this action requires developer credentials.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @return [Types::GetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Gets the specified IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :idp_identifier
    #   The IdP identifier.
    #
    # @return [Types::GetIdentityProviderByIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityProviderByIdentifierResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_provider_by_identifier({
    #     user_pool_id: "UserPoolIdType", # required
    #     idp_identifier: "IdpIdentifierType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifier AWS API Documentation
    #
    # @overload get_identity_provider_by_identifier(params = {})
    # @param [Hash] params ({})
    def get_identity_provider_by_identifier(params = {}, options = {})
      req = build_request(:get_identity_provider_by_identifier, params)
      req.send_request(options)
    end

    # Gets the logging configuration of a user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that has the logging configuration that you
    #   want to view.
    #
    # @return [Types::GetLogDeliveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogDeliveryConfigurationResponse#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_delivery_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_delivery_configuration.user_pool_id #=> String
    #   resp.log_delivery_configuration.log_configurations #=> Array
    #   resp.log_delivery_configuration.log_configurations[0].log_level #=> String, one of "ERROR", "INFO"
    #   resp.log_delivery_configuration.log_configurations[0].event_source #=> String, one of "userNotification", "userAuthEvents"
    #   resp.log_delivery_configuration.log_configurations[0].cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].s3_configuration.bucket_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].firehose_configuration.stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetLogDeliveryConfiguration AWS API Documentation
    #
    # @overload get_log_delivery_configuration(params = {})
    # @param [Hash] params ({})
    def get_log_delivery_configuration(params = {}, options = {})
      req = build_request(:get_log_delivery_configuration, params)
      req.send_request(options)
    end

    # This method takes a user pool ID, and returns the signing certificate.
    # The issued certificate is valid for 10 years from the date of issue.
    #
    # Amazon Cognito issues and assigns a new signing certificate annually.
    # This process returns a new value in the response to
    # `GetSigningCertificate`, but doesn't invalidate the original
    # certificate.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @return [Types::GetSigningCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSigningCertificateResponse#certificate #certificate} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_certificate({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificate AWS API Documentation
    #
    # @overload get_signing_certificate(params = {})
    # @param [Hash] params ({})
    def get_signing_certificate(params = {}, options = {})
      req = build_request(:get_signing_certificate, params)
      req.send_request(options)
    end

    # Gets the user interface (UI) Customization information for a
    # particular app client's app UI, if any such information exists for
    # the client. If nothing is set for the particular client, but there is
    # an existing pool level customization (the app `clientId` is `ALL`),
    # then that information is returned. If nothing is present, then an
    # empty shape is returned.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [String] :client_id
    #   The client ID for the client app.
    #
    # @return [Types::GetUICustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUICustomizationResponse#ui_customization #ui_customization} => Types::UICustomizationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ui_customization({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.ui_customization.user_pool_id #=> String
    #   resp.ui_customization.client_id #=> String
    #   resp.ui_customization.image_url #=> String
    #   resp.ui_customization.css #=> String
    #   resp.ui_customization.css_version #=> String
    #   resp.ui_customization.last_modified_date #=> Time
    #   resp.ui_customization.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUICustomization AWS API Documentation
    #
    # @overload get_ui_customization(params = {})
    # @param [Hash] params ({})
    def get_ui_customization(params = {}, options = {})
      req = build_request(:get_ui_customization, params)
      req.send_request(options)
    end

    # Gets the user attributes and metadata for a user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A non-expired access token for the user whose information you want to
    #   query.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#username #username} => String
    #   * {Types::GetUserResponse#user_attributes #user_attributes} => Array&lt;Types::AttributeType&gt;
    #   * {Types::GetUserResponse#mfa_options #mfa_options} => Array&lt;Types::MFAOptionType&gt;
    #   * {Types::GetUserResponse#preferred_mfa_setting #preferred_mfa_setting} => String
    #   * {Types::GetUserResponse#user_mfa_setting_list #user_mfa_setting_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.user_attributes #=> Array
    #   resp.user_attributes[0].name #=> String
    #   resp.user_attributes[0].value #=> String
    #   resp.mfa_options #=> Array
    #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.mfa_options[0].attribute_name #=> String
    #   resp.preferred_mfa_setting #=> String
    #   resp.user_mfa_setting_list #=> Array
    #   resp.user_mfa_setting_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Generates a user attribute verification code for the specified
    # attribute name. Sends a message to a user with a code that they must
    # return in a VerifyUserAttribute request.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :access_token
    #   A non-expired access token for the user whose attribute verification
    #   code you want to generate.
    #
    # @option params [required, String] :attribute_name
    #   The attribute name returned by the server response to get the user
    #   attribute verification code.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the GetUserAttributeVerificationCode API
    #   action, Amazon Cognito invokes the function that is assigned to the
    #   *custom message* trigger. When Amazon Cognito invokes this function,
    #   it passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your
    #   GetUserAttributeVerificationCode request. In your function code in
    #   Lambda, you can process the `clientMetadata` value to enhance your
    #   workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::GetUserAttributeVerificationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserAttributeVerificationCodeResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_attribute_verification_code({
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCode AWS API Documentation
    #
    # @overload get_user_attribute_verification_code(params = {})
    # @param [Hash] params ({})
    def get_user_attribute_verification_code(params = {}, options = {})
      req = build_request(:get_user_attribute_verification_code, params)
      req.send_request(options)
    end

    # Gets the user pool multi-factor authentication (MFA) configuration.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @return [Types::GetUserPoolMfaConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserPoolMfaConfigResponse#sms_mfa_configuration #sms_mfa_configuration} => Types::SmsMfaConfigType
    #   * {Types::GetUserPoolMfaConfigResponse#software_token_mfa_configuration #software_token_mfa_configuration} => Types::SoftwareTokenMfaConfigType
    #   * {Types::GetUserPoolMfaConfigResponse#mfa_configuration #mfa_configuration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_pool_mfa_config({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_mfa_configuration.sms_authentication_message #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_caller_arn #=> String
    #   resp.sms_mfa_configuration.sms_configuration.external_id #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_region #=> String
    #   resp.software_token_mfa_configuration.enabled #=> Boolean
    #   resp.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfig AWS API Documentation
    #
    # @overload get_user_pool_mfa_config(params = {})
    # @param [Hash] params ({})
    def get_user_pool_mfa_config(params = {}, options = {})
      req = build_request(:get_user_pool_mfa_config, params)
      req.send_request(options)
    end

    # Invalidates the identity, access, and refresh tokens that Amazon
    # Cognito issued to a user. Call this operation when your user signs out
    # of your app. This results in the following behavior.
    #
    # * Amazon Cognito no longer accepts *token-authorized* user operations
    #   that you authorize with a signed-out user's access tokens. For more
    #   information, see [Using the Amazon Cognito user pools API and user
    #   pool endpoints][1].
    #
    #   Amazon Cognito returns an `Access Token has been revoked` error when
    #   your app attempts to authorize a user pools API request with a
    #   revoked access token that contains the scope
    #   `aws.cognito.signin.user.admin`.
    #
    # * Amazon Cognito no longer accepts a signed-out user's ID token in a
    #   [GetId ][2] request to an identity pool with `ServerSideTokenCheck`
    #   enabled for its user pool IdP configuration in
    #   [CognitoIdentityProvider][3].
    #
    # * Amazon Cognito no longer accepts a signed-out user's refresh tokens
    #   in refresh requests.
    #
    # Other requests might be valid until your user's token expires.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
    # [3]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user who you
    #   want to sign out.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.global_sign_out({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOut AWS API Documentation
    #
    # @overload global_sign_out(params = {})
    # @param [Hash] params ({})
    def global_sign_out(params = {}, options = {})
      req = build_request(:global_sign_out, params)
      req.send_request(options)
    end

    # Initiates sign-in for a user in the Amazon Cognito user directory. You
    # can't sign in a user with a federated IdP with `InitiateAuth`. For
    # more information, see [ Adding user pool sign-in through a third
    # party][1].
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][3]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][4] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [3]: https://console.aws.amazon.com/pinpoint/home/
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow for this call to run. The API action will
    #   depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` takes in a valid refresh token and returns new
    #     tokens.
    #
    #   * `USER_SRP_AUTH` takes in `USERNAME` and `SRP_A` and returns the SRP
    #     variables to be used for next challenge execution.
    #
    #   * `USER_PASSWORD_AUTH` takes in `USERNAME` and `PASSWORD` and returns
    #     the next challenge or tokens.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`: Authentication flow for the Secure Remote Password
    #     (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`: Custom authentication flow.
    #
    #   * `USER_PASSWORD_AUTH`: Non-SRP authentication flow; user name and
    #     password are passed directly. If a user migration Lambda trigger is
    #     set, this flow will invoke the user migration Lambda if it doesn't
    #     find the user name in the user pool.
    #
    #   `ADMIN_NO_SRP_AUTH` isn't a valid value.
    #
    # @option params [Hash<String,String>] :auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking. The required values depend on the
    #   value of `AuthFlow`:
    #
    #   * For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `USER_PASSWORD_AUTH`: `USERNAME` (required), `PASSWORD`
    #     (required), `SECRET_HASH` (required if the app client is configured
    #     with a client secret), `DEVICE_KEY`.
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`. To start the
    #     authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the InitiateAuth API action, Amazon Cognito
    #   invokes the Lambda functions that are specified for various triggers.
    #   The ClientMetadata value is passed as input to the functions for only
    #   the following triggers:
    #
    #   * Pre signup
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `validationData` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your InitiateAuth
    #   request. In your function code in Lambda, you can process the
    #   `validationData` value to enhance your workflow for your specific
    #   needs.
    #
    #   When you use the InitiateAuth API action, Amazon Cognito also invokes
    #   the functions for the following triggers, but it doesn't provide the
    #   ClientMetadata value as input:
    #
    #   * Post authentication
    #
    #   * Custom message
    #
    #   * Pre token generation
    #
    #   * Create auth challenge
    #
    #   * Define auth challenge
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `InitiateAuth` calls.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @return [Types::InitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateAuthResponse#challenge_name #challenge_name} => String
    #   * {Types::InitiateAuthResponse#session #session} => String
    #   * {Types::InitiateAuthResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::InitiateAuthResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    #
    # @example Example: Example username and password sign-in for a user who has TOTP MFA
    #
    #   # The following example signs in the user mytestuser with analytics data, client metadata, and user context data for
    #   # advanced security.
    #
    #   resp = client.initiate_auth({
    #     analytics_metadata: {
    #       analytics_endpoint_id: "d70b2ba36a8c4dc5a04a0451a31a1e12", 
    #     }, 
    #     auth_flow: "USER_PASSWORD_AUTH", 
    #     auth_parameters: {
    #       "PASSWORD" => "This-is-my-test-99!", 
    #       "SECRET_HASH" => "oT5ZkS8ctnrhYeeGsGTvOzPhoc/Jd1cO5fueBWFVmp8=", 
    #       "USERNAME" => "mytestuser", 
    #     }, 
    #     client_id: "1example23456789", 
    #     client_metadata: {
    #       "MyTestKey" => "MyTestValue", 
    #     }, 
    #     user_context_data: {
    #       encoded_data: "AmazonCognitoAdvancedSecurityData_object", 
    #       ip_address: "192.0.2.1", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     challenge_name: "SOFTWARE_TOKEN_MFA", 
    #     challenge_parameters: {
    #       "FRIENDLY_DEVICE_NAME" => "mytestauthenticator", 
    #       "USER_ID_FOR_SRP" => "mytestuser", 
    #     }, 
    #     session: "AYABeC1-y8qooiuysEv0uM4wAqQAHQABAAdTZXJ2aWNlABBDb2duaXRvVXNlclBvb2xzAAEAB2F3cy1rbXMAS2Fybjphd3M6a21zOnVzLXdlc3QtMjowMTU3MzY3MjcxOTg6a2V5LzI5OTFhNGE5LTM5YTAtNDQ0Mi04MWU4LWRkYjY4NTllMTg2MQC4AQIBAHhjxv5lVLhE2_WNrC1zuomqn08qDUUp3z9v4EGAjazZ-wGP3HuBF5Izvxf-9WkCT5uyAAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMeQoT5e6Dpfh52caqAgEQgDvuL8uLMhPt0WmQpZnkNED1gob6xbqt5LaQo_H4L5CuT4Kj499dGCoZ1q1trmlZSRgRm0wwGGG8lFU37QIAAAAADAAAEAAAAAAAAAAAAAAAAADuLe9_UJ4oZAMsQYr0ntiT_____wAAAAEAAAAAAAAAAAAAAAEAAADnLDGmKBQtsCafNokRmPLgl2itBKuKR2dfZBQb5ucCYkzThM5HOfQUSEL-A3dZzfYDC0IODsrcMkrbeeVyMJk-FCzsxS9Og8BEBVnvi9WjZkPJ4mF0YS6FUXnoPSBV5oUqGzRaT-tJ169SUFZAUfFM1fGeJ8T57-QdCxjyISRCWV1VG5_7TiCioyRGfWwzNVWh7exJortF3ccfOyiEyxeqJ2VJvJq3m_w8NP24_PMDpktpRMKftObIMlD5ewRTNCdrUXQ1BW5KIxhJLGjYfRzJDZuKzmEgS-VHsKz0z76w-AlAgdfvdAjflLnsgduU5kUX4YP6jqnetg", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_auth({
    #     auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH, USER_PASSWORD_AUTH, ADMIN_USER_PASSWORD_AUTH
    #     auth_parameters: {
    #       "StringType" => "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #     client_id: "ClientIdType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuth AWS API Documentation
    #
    # @overload initiate_auth(params = {})
    # @param [Hash] params ({})
    def initiate_auth(params = {}, options = {})
      req = build_request(:initiate_auth, params)
      req.send_request(options)
    end

    # Lists the sign-in devices that Amazon Cognito has registered to the
    # current user. For more information about device authentication, see
    # [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose list
    #   of devices you want to view.
    #
    # @option params [Integer] :limit
    #   The limit of the device request.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::DeviceType&gt;
    #   * {Types::ListDevicesResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     access_token: "TokenModelType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_key #=> String
    #   resp.devices[0].device_attributes #=> Array
    #   resp.devices[0].device_attributes[0].name #=> String
    #   resp.devices[0].device_attributes[0].value #=> String
    #   resp.devices[0].device_create_date #=> Time
    #   resp.devices[0].device_last_modified_date #=> Time
    #   resp.devices[0].device_last_authenticated_date #=> Time
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Lists the groups associated with a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [Integer] :limit
    #   The limit of the request to list groups.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::GroupType&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].user_pool_id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].role_arn #=> String
    #   resp.groups[0].precedence #=> Integer
    #   resp.groups[0].last_modified_date #=> Time
    #   resp.groups[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists information about all IdPs for a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of IdPs to return.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListIdentityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProvidersResponse#providers #providers} => Array&lt;Types::ProviderDescription&gt;
    #   * {Types::ListIdentityProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.providers #=> Array
    #   resp.providers[0].provider_name #=> String
    #   resp.providers[0].provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.providers[0].last_modified_date #=> Time
    #   resp.providers[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListIdentityProviders AWS API Documentation
    #
    # @overload list_identity_providers(params = {})
    # @param [Hash] params ({})
    def list_identity_providers(params = {}, options = {})
      req = build_request(:list_identity_providers, params)
      req.send_request(options)
    end

    # Lists the resource servers for a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource servers to return.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListResourceServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceServersResponse#resource_servers #resource_servers} => Array&lt;Types::ResourceServerType&gt;
    #   * {Types::ListResourceServersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_servers({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_servers #=> Array
    #   resp.resource_servers[0].user_pool_id #=> String
    #   resp.resource_servers[0].identifier #=> String
    #   resp.resource_servers[0].name #=> String
    #   resp.resource_servers[0].scopes #=> Array
    #   resp.resource_servers[0].scopes[0].scope_name #=> String
    #   resp.resource_servers[0].scopes[0].scope_description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListResourceServers AWS API Documentation
    #
    # @overload list_resource_servers(params = {})
    # @param [Hash] params ({})
    def list_resource_servers(params = {}, options = {})
      req = build_request(:list_resource_servers, params)
      req.send_request(options)
    end

    # Lists the tags that are assigned to an Amazon Cognito user pool.
    #
    # A tag is a label that you can apply to user pools to categorize and
    # manage them in different ways, such as by purpose, owner, environment,
    # or other criteria.
    #
    # You can use this action up to 10 times per second, per account.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the user pool that the tags are
    #   assigned to.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ArnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKeysType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists user import jobs for a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of import jobs you want the request to return.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListUserImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserImportJobsResponse#user_import_jobs #user_import_jobs} => Array&lt;Types::UserImportJobType&gt;
    #   * {Types::ListUserImportJobsResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_import_jobs({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1, # required
    #     pagination_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_jobs #=> Array
    #   resp.user_import_jobs[0].job_name #=> String
    #   resp.user_import_jobs[0].job_id #=> String
    #   resp.user_import_jobs[0].user_pool_id #=> String
    #   resp.user_import_jobs[0].pre_signed_url #=> String
    #   resp.user_import_jobs[0].creation_date #=> Time
    #   resp.user_import_jobs[0].start_date #=> Time
    #   resp.user_import_jobs[0].completion_date #=> Time
    #   resp.user_import_jobs[0].status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_jobs[0].cloud_watch_logs_role_arn #=> String
    #   resp.user_import_jobs[0].imported_users #=> Integer
    #   resp.user_import_jobs[0].skipped_users #=> Integer
    #   resp.user_import_jobs[0].failed_users #=> Integer
    #   resp.user_import_jobs[0].completion_message #=> String
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserImportJobs AWS API Documentation
    #
    # @overload list_user_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_user_import_jobs(params = {}, options = {})
      req = build_request(:list_user_import_jobs, params)
      req.send_request(options)
    end

    # Lists the clients that have been created for the specified user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to list user pool
    #   clients.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return when
    #   listing the user pool clients.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListUserPoolClientsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoolClientsResponse#user_pool_clients #user_pool_clients} => Array&lt;Types::UserPoolClientDescription&gt;
    #   * {Types::ListUserPoolClientsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pool_clients({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_clients #=> Array
    #   resp.user_pool_clients[0].client_id #=> String
    #   resp.user_pool_clients[0].user_pool_id #=> String
    #   resp.user_pool_clients[0].client_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolClients AWS API Documentation
    #
    # @overload list_user_pool_clients(params = {})
    # @param [Hash] params ({})
    def list_user_pool_clients(params = {}, options = {})
      req = build_request(:list_user_pool_clients, params)
      req.send_request(options)
    end

    # Lists the user pools associated with an Amazon Web Services account.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of results you want the request to return when
    #   listing the user pools.
    #
    # @return [Types::ListUserPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoolsResponse#user_pools #user_pools} => Array&lt;Types::UserPoolDescriptionType&gt;
    #   * {Types::ListUserPoolsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pools({
    #     next_token: "PaginationKeyType",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pools #=> Array
    #   resp.user_pools[0].id #=> String
    #   resp.user_pools[0].name #=> String
    #   resp.user_pools[0].lambda_config.pre_sign_up #=> String
    #   resp.user_pools[0].lambda_config.custom_message #=> String
    #   resp.user_pools[0].lambda_config.post_confirmation #=> String
    #   resp.user_pools[0].lambda_config.pre_authentication #=> String
    #   resp.user_pools[0].lambda_config.post_authentication #=> String
    #   resp.user_pools[0].lambda_config.define_auth_challenge #=> String
    #   resp.user_pools[0].lambda_config.create_auth_challenge #=> String
    #   resp.user_pools[0].lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pools[0].lambda_config.pre_token_generation #=> String
    #   resp.user_pools[0].lambda_config.user_migration #=> String
    #   resp.user_pools[0].lambda_config.pre_token_generation_config.lambda_version #=> String, one of "V1_0", "V2_0"
    #   resp.user_pools[0].lambda_config.pre_token_generation_config.lambda_arn #=> String
    #   resp.user_pools[0].lambda_config.custom_sms_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pools[0].lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.user_pools[0].lambda_config.custom_email_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pools[0].lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.user_pools[0].lambda_config.kms_key_id #=> String
    #   resp.user_pools[0].status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pools[0].last_modified_date #=> Time
    #   resp.user_pools[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPools AWS API Documentation
    #
    # @overload list_user_pools(params = {})
    # @param [Hash] params ({})
    def list_user_pools(params = {}, options = {})
      req = build_request(:list_user_pools, params)
      req.send_request(options)
    end

    # Lists users and their basic details in a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool on which the search should be
    #   performed.
    #
    # @option params [Array<String>] :attributes_to_get
    #   A JSON array of user attribute names, for example `given_name`, that
    #   you want Amazon Cognito to include in the response for each user. When
    #   you don't provide an `AttributesToGet` parameter, Amazon Cognito
    #   returns all attributes for each user.
    #
    #   Use `AttributesToGet` with required attributes in your user pool, or
    #   in conjunction with `Filter`. Amazon Cognito returns an error if not
    #   all users in the results have set a value for the attribute you
    #   request. Attributes that you can't filter on, including custom
    #   attributes, must have a value set in every user profile before an
    #   `AttributesToGet` parameter returns results.
    #
    # @option params [Integer] :limit
    #   Maximum number of users to be returned.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @option params [String] :filter
    #   A filter string of the form "*AttributeName* *Filter-Type*
    #   "*AttributeValue*"". Quotation marks within the filter string must
    #   be escaped using the backslash (``) character. For example,
    #   `"family_name = "Reddy""`.
    #
    #   * *AttributeName*: The name of the attribute to search for. You can
    #     only search for one attribute at a time.
    #
    #   * *Filter-Type*: For an exact match, use `=`, for example,
    #     "`given_name = "Jon"`". For a prefix ("starts with") match,
    #     use `^=`, for example, "`given_name ^= "Jon"`".
    #
    #   * *AttributeValue*: The attribute value that must be matched for each
    #     user.
    #
    #   If the filter string is empty, `ListUsers` returns all users in the
    #   user pool.
    #
    #   You can only search for the following standard attributes:
    #
    #   * `username` (case-sensitive)
    #
    #   * `email`
    #
    #   * `phone_number`
    #
    #   * `name`
    #
    #   * `given_name`
    #
    #   * `family_name`
    #
    #   * `preferred_username`
    #
    #   * `cognito:user_status` (called **Status** in the Console)
    #     (case-insensitive)
    #
    #   * `status (called Enabled in the Console) (case-sensitive)`
    #
    #   * `sub`
    #
    #   Custom attributes aren't searchable.
    #
    #   <note markdown="1"> You can also list users with a client-side filter. The server-side
    #   filter matches no more than one attribute. For an advanced search, use
    #   a client-side filter with the `--query` parameter of the `list-users`
    #   action in the CLI. When you use a client-side filter, ListUsers
    #   returns a paginated list of zero or more users. You can receive
    #   multiple pages in a row with zero results. Repeat the query with each
    #   pagination token that is returned until you receive a null pagination
    #   token value, and then review the combined result.
    #
    #    For more information about server-side and client-side filtering, see
    #   [FilteringCLI output][1] in the [Command Line Interface User
    #   Guide][1].
    #
    #    </note>
    #
    #   For more information, see [Searching for Users Using the ListUsers
    #   API][2] and [Examples of Using the ListUsers API][3] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::UserType&gt;
    #   * {Types::ListUsersResponse#pagination_token #pagination_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: A ListUsers request for the next 3 users whose email address starts with "testuser."
    #
    #   # This request submits a value for all possible parameters for ListUsers. By iterating the PaginationToken, you can page
    #   # through and collect all users in a user pool.
    #
    #   resp = client.list_users({
    #     attributes_to_get: [
    #       "email", 
    #       "sub", 
    #     ], 
    #     filter: "\"email\"^=\"testuser\"", 
    #     limit: 3, 
    #     pagination_token: "abcd1234EXAMPLE", 
    #     user_pool_id: "us-east-1_EXAMPLE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     pagination_token: "efgh5678EXAMPLE", 
    #     users: [
    #       {
    #         attributes: [
    #           {
    #             name: "sub", 
    #             value: "eaad0219-2117-439f-8d46-4db20e59268f", 
    #           }, 
    #           {
    #             name: "email", 
    #             value: "testuser@example.com", 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         user_create_date: Time.parse(1682955829.578), 
    #         user_last_modified_date: Time.parse(1689030181.63), 
    #         user_status: "CONFIRMED", 
    #         username: "testuser", 
    #       }, 
    #       {
    #         attributes: [
    #           {
    #             name: "sub", 
    #             value: "3b994cfd-0b07-4581-be46-3c82f9a70c90", 
    #           }, 
    #           {
    #             name: "email", 
    #             value: "testuser2@example.com", 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         user_create_date: Time.parse(1684427979.201), 
    #         user_last_modified_date: Time.parse(1684427979.201), 
    #         user_status: "UNCONFIRMED", 
    #         username: "testuser2", 
    #       }, 
    #       {
    #         attributes: [
    #           {
    #             name: "sub", 
    #             value: "5929e0d1-4c34-42d1-9b79-a5ecacfe66f7", 
    #           }, 
    #           {
    #             name: "email", 
    #             value: "testuser3@example.com", 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         user_create_date: Time.parse(1684427823.641), 
    #         user_last_modified_date: Time.parse(1684427823.641), 
    #         user_status: "UNCONFIRMED", 
    #         username: "testuser3@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     user_pool_id: "UserPoolIdType", # required
    #     attributes_to_get: ["AttributeNameType"],
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #     filter: "UserFilterType",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].username #=> String
    #   resp.users[0].attributes #=> Array
    #   resp.users[0].attributes[0].name #=> String
    #   resp.users[0].attributes[0].value #=> String
    #   resp.users[0].user_create_date #=> Time
    #   resp.users[0].user_last_modified_date #=> Time
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.users[0].mfa_options #=> Array
    #   resp.users[0].mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.users[0].mfa_options[0].attribute_name #=> String
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists the users in the specified group.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [Integer] :limit
    #   The maximum number of users that you want to retrieve before
    #   pagination.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListUsersInGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersInGroupResponse#users #users} => Array&lt;Types::UserType&gt;
    #   * {Types::ListUsersInGroupResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users_in_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     group_name: "GroupNameType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].username #=> String
    #   resp.users[0].attributes #=> Array
    #   resp.users[0].attributes[0].name #=> String
    #   resp.users[0].attributes[0].value #=> String
    #   resp.users[0].user_create_date #=> Time
    #   resp.users[0].user_last_modified_date #=> Time
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.users[0].mfa_options #=> Array
    #   resp.users[0].mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.users[0].mfa_options[0].attribute_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroup AWS API Documentation
    #
    # @overload list_users_in_group(params = {})
    # @param [Hash] params ({})
    def list_users_in_group(params = {}, options = {})
      req = build_request(:list_users_in_group, params)
      req.send_request(options)
    end

    # Resends the confirmation (for confirmation of registration) to a
    # specific user in the user pool.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `ResendConfirmationCode` calls.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ResendConfirmationCode API action, Amazon
    #   Cognito invokes the function that is assigned to the *custom message*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your ResendConfirmationCode
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::ResendConfirmationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResendConfirmationCodeResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_confirmation_code({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     username: "UsernameType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCode AWS API Documentation
    #
    # @overload resend_confirmation_code(params = {})
    # @param [Hash] params ({})
    def resend_confirmation_code(params = {}, options = {})
      req = build_request(:resend_confirmation_code, params)
      req.send_request(options)
    end

    # Some API operations in a user pool generate a challenge, like a prompt
    # for an MFA code, for device authentication that bypasses MFA, or for a
    # custom authentication challenge. A `RespondToAuthChallenge` API
    # request provides the answer to that challenge, like a code or a secure
    # remote password (SRP). The parameters of a response to an
    # authentication challenge vary with the type of challenge.
    #
    # For more information about custom authentication challenges, see
    # [Custom authentication challenge Lambda triggers][1].
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][3]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][4] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [3]: https://console.aws.amazon.com/pinpoint/home/
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [required, String] :challenge_name
    #   The challenge name. For more information, see [InitiateAuth][1].
    #
    #   `ADMIN_NO_SRP_AUTH` isn't a valid value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html
    #
    # @option params [String] :session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller must pass another challenge, they
    #   return a session with other challenge parameters. This session should
    #   be passed as it is to the next `RespondToAuthChallenge` API call.
    #
    # @option params [Hash<String,String>] :challenge_responses
    #   The responses to the challenge that you received in the previous
    #   request. Each challenge has its own required response parameters. The
    #   following examples are partial JSON request bodies that highlight
    #   challenge-response parameters.
    #
    #   You must provide a SECRET\_HASH parameter in all challenge responses
    #   to an app client that has a client secret.
    #
    #   SMS\_MFA
    #
    #   : `"ChallengeName": "SMS_MFA", "ChallengeResponses": \{"SMS_MFA_CODE":
    #     "[SMS_code]", "USERNAME": "[username]"\}`
    #
    #   PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #     \{"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"\}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   CUSTOM\_CHALLENGE
    #
    #   : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "ANSWER": "[challenge_answer]"\}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   NEW\_PASSWORD\_REQUIRED
    #
    #   : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #     \{"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"\}`
    #
    #     To set any required attributes that `InitiateAuth` returned in an
    #     `requiredAttributes` parameter, add
    #     `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #     parameter can also set values for writable attributes that aren't
    #     required by your user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #     required attribute that already has a value. In
    #     `RespondToAuthChallenge`, set a value for any keys that Amazon
    #     Cognito returned in the `requiredAttributes` parameter, then use the
    #     `UpdateUserAttributes` API operation to modify the value of any
    #     additional attributes.
    #
    #      </note>
    #
    #   SOFTWARE\_TOKEN\_MFA
    #
    #   : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #     [authenticator_code]\}`
    #
    #   DEVICE\_SRP\_AUTH
    #
    #   : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #     "[srp_a]"\}`
    #
    #   DEVICE\_PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #     \{"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #     "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK":
    #     "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME":
    #     "[username]"\}`
    #
    #   MFA\_SETUP
    #
    #   : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": \{"USERNAME":
    #     "[username]"\}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    #   SELECT\_MFA\_TYPE
    #
    #   : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #     \{"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #     SOFTWARE_TOKEN_MFA]"\}`
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `RespondToAuthChallenge` calls.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the RespondToAuthChallenge API action, Amazon
    #   Cognito invokes any functions that are assigned to the following
    #   triggers: *post authentication*, *pre token generation*, *define auth
    #   challenge*, *create auth challenge*, and *verify auth challenge*. When
    #   Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your RespondToAuthChallenge
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::RespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RespondToAuthChallengeResponse#challenge_name #challenge_name} => String
    #   * {Types::RespondToAuthChallengeResponse#session #session} => String
    #   * {Types::RespondToAuthChallengeResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::RespondToAuthChallengeResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_to_auth_challenge({
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, SOFTWARE_TOKEN_MFA, SELECT_MFA_TYPE, MFA_SETUP, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED
    #     session: "SessionType",
    #     challenge_responses: {
    #       "StringType" => "StringType",
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallenge AWS API Documentation
    #
    # @overload respond_to_auth_challenge(params = {})
    # @param [Hash] params ({})
    def respond_to_auth_challenge(params = {}, options = {})
      req = build_request(:respond_to_auth_challenge, params)
      req.send_request(options)
    end

    # Revokes all of the access tokens generated by, and at the same time
    # as, the specified refresh token. After a token is revoked, you can't
    # use the revoked token to access Amazon Cognito user APIs, or to
    # authorize access to your resource server.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :token
    #   The refresh token that you want to revoke.
    #
    # @option params [required, String] :client_id
    #   The client ID for the token that you want to revoke.
    #
    # @option params [String] :client_secret
    #   The secret for the client ID. This is required only if the client ID
    #   has a secret.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_token({
    #     token: "TokenModelType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret: "ClientSecretType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RevokeToken AWS API Documentation
    #
    # @overload revoke_token(params = {})
    # @param [Hash] params ({})
    def revoke_token(params = {}, options = {})
      req = build_request(:revoke_token, params)
      req.send_request(options)
    end

    # Sets up or modifies the logging configuration of a user pool. User
    # pools can export user notification logs and advanced security features
    # user activity logs.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to configure logging.
    #
    # @option params [required, Array<Types::LogConfigurationType>] :log_configurations
    #   A collection of the logging configurations for a user pool.
    #
    # @return [Types::SetLogDeliveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetLogDeliveryConfigurationResponse#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_log_delivery_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #     log_configurations: [ # required
    #       {
    #         log_level: "ERROR", # required, accepts ERROR, INFO
    #         event_source: "userNotification", # required, accepts userNotification, userAuthEvents
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "ArnType",
    #         },
    #         s3_configuration: {
    #           bucket_arn: "S3ArnType",
    #         },
    #         firehose_configuration: {
    #           stream_arn: "ArnType",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.log_delivery_configuration.user_pool_id #=> String
    #   resp.log_delivery_configuration.log_configurations #=> Array
    #   resp.log_delivery_configuration.log_configurations[0].log_level #=> String, one of "ERROR", "INFO"
    #   resp.log_delivery_configuration.log_configurations[0].event_source #=> String, one of "userNotification", "userAuthEvents"
    #   resp.log_delivery_configuration.log_configurations[0].cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].s3_configuration.bucket_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].firehose_configuration.stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetLogDeliveryConfiguration AWS API Documentation
    #
    # @overload set_log_delivery_configuration(params = {})
    # @param [Hash] params ({})
    def set_log_delivery_configuration(params = {}, options = {})
      req = build_request(:set_log_delivery_configuration, params)
      req.send_request(options)
    end

    # Configures actions on detected risks. To delete the risk configuration
    # for `UserPoolId` or `ClientId`, pass null values for all four
    # configuration types.
    #
    # To activate Amazon Cognito advanced security features, update the user
    # pool to include the `UserPoolAddOns` key`AdvancedSecurityMode`.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [String] :client_id
    #   The app client ID. If `ClientId` is null, then the risk configuration
    #   is mapped to `userPoolId`. When the client ID is null, the same risk
    #   configuration is applied to all the clients in the userPool.
    #
    #   Otherwise, `ClientId` is mapped to the client. When the client ID
    #   isn't null, the user pool configuration is overridden and the risk
    #   configuration for the client is used instead.
    #
    # @option params [Types::CompromisedCredentialsRiskConfigurationType] :compromised_credentials_risk_configuration
    #   The compromised credentials risk configuration.
    #
    # @option params [Types::AccountTakeoverRiskConfigurationType] :account_takeover_risk_configuration
    #   The account takeover risk configuration.
    #
    # @option params [Types::RiskExceptionConfigurationType] :risk_exception_configuration
    #   The configuration to override the risk decision.
    #
    # @return [Types::SetRiskConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetRiskConfigurationResponse#risk_configuration #risk_configuration} => Types::RiskConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_risk_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #     compromised_credentials_risk_configuration: {
    #       event_filter: ["SIGN_IN"], # accepts SIGN_IN, PASSWORD_CHANGE, SIGN_UP
    #       actions: { # required
    #         event_action: "BLOCK", # required, accepts BLOCK, NO_ACTION
    #       },
    #     },
    #     account_takeover_risk_configuration: {
    #       notify_configuration: {
    #         from: "StringType",
    #         reply_to: "StringType",
    #         source_arn: "ArnType", # required
    #         block_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #         no_action_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #         mfa_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #       },
    #       actions: { # required
    #         low_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #         medium_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #         high_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #       },
    #     },
    #     risk_exception_configuration: {
    #       blocked_ip_range_list: ["StringType"],
    #       skipped_ip_range_list: ["StringType"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.risk_configuration.user_pool_id #=> String
    #   resp.risk_configuration.client_id #=> String
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter #=> Array
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter[0] #=> String, one of "SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"
    #   resp.risk_configuration.compromised_credentials_risk_configuration.actions.event_action #=> String, one of "BLOCK", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.from #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.reply_to #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.source_arn #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list[0] #=> String
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list[0] #=> String
    #   resp.risk_configuration.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetRiskConfiguration AWS API Documentation
    #
    # @overload set_risk_configuration(params = {})
    # @param [Hash] params ({})
    def set_risk_configuration(params = {}, options = {})
      req = build_request(:set_risk_configuration, params)
      req.send_request(options)
    end

    # Sets the user interface (UI) customization information for a user
    # pool's built-in app UI.
    #
    # You can specify app UI customization settings for a single client
    # (with a specific `clientId`) or for all clients (by setting the
    # `clientId` to `ALL`). If you specify `ALL`, the default configuration
    # is used for every client that has no previously set UI customization.
    # If you specify UI customization settings for a particular client, it
    # will no longer return to the `ALL` configuration.
    #
    # <note markdown="1"> To use this API, your user pool must have a domain associated with it.
    # Otherwise, there is no place to host the app's pages, and the service
    # will throw an error.
    #
    #  </note>
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [String] :client_id
    #   The client ID for the client app.
    #
    # @option params [String] :css
    #   The CSS values in the UI customization.
    #
    # @option params [String, StringIO, File] :image_file
    #   The uploaded logo image for the UI customization.
    #
    # @return [Types::SetUICustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetUICustomizationResponse#ui_customization #ui_customization} => Types::UICustomizationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_ui_customization({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #     css: "CSSType",
    #     image_file: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.ui_customization.user_pool_id #=> String
    #   resp.ui_customization.client_id #=> String
    #   resp.ui_customization.image_url #=> String
    #   resp.ui_customization.css #=> String
    #   resp.ui_customization.css_version #=> String
    #   resp.ui_customization.last_modified_date #=> Time
    #   resp.ui_customization.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUICustomization AWS API Documentation
    #
    # @overload set_ui_customization(params = {})
    # @param [Hash] params ({})
    def set_ui_customization(params = {}, options = {})
      req = build_request(:set_ui_customization, params)
      req.send_request(options)
    end

    # Set the user's multi-factor authentication (MFA) method preference,
    # including which MFA factors are activated and if any are preferred.
    # Only one factor can be set as preferred. The preferred MFA factor will
    # be used to authenticate a user if multiple factors are activated. If
    # multiple options are activated and no preference is set, a challenge
    # to choose an MFA option will be returned during sign-in. If an MFA
    # type is activated for a user, the user will be prompted for MFA during
    # all sign-in attempts unless device tracking is turned on and the
    # device has been trusted. If you want MFA to be applied selectively
    # based on the assessed risk level of sign-in attempts, deactivate MFA
    # for users and turn on Adaptive Authentication for the user pool.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [Types::SMSMfaSettingsType] :sms_mfa_settings
    #   The SMS text message multi-factor authentication (MFA) settings.
    #
    # @option params [Types::SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   The time-based one-time password (TOTP) software token MFA settings.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose MFA
    #   preference you want to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_mfa_preference({
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreference AWS API Documentation
    #
    # @overload set_user_mfa_preference(params = {})
    # @param [Hash] params ({})
    def set_user_mfa_preference(params = {}, options = {})
      req = build_request(:set_user_mfa_preference, params)
      req.send_request(options)
    end

    # Sets the user pool multi-factor authentication (MFA) configuration.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [Types::SmsMfaConfigType] :sms_mfa_configuration
    #   The SMS text message MFA configuration.
    #
    # @option params [Types::SoftwareTokenMfaConfigType] :software_token_mfa_configuration
    #   The software token MFA configuration.
    #
    # @option params [String] :mfa_configuration
    #   The MFA configuration. If you set the MfaConfiguration value to ‘ON’,
    #   only users who have set up an MFA factor can sign in. To learn more,
    #   see [Adding Multi-Factor Authentication (MFA) to a user pool][1].
    #   Valid values include:
    #
    #   * `OFF` MFA won't be used for any users.
    #
    #   * `ON` MFA is required for all users to sign in.
    #
    #   * `OPTIONAL` MFA will be required only for individual users who have
    #     an MFA factor activated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html
    #
    # @return [Types::SetUserPoolMfaConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetUserPoolMfaConfigResponse#sms_mfa_configuration #sms_mfa_configuration} => Types::SmsMfaConfigType
    #   * {Types::SetUserPoolMfaConfigResponse#software_token_mfa_configuration #software_token_mfa_configuration} => Types::SoftwareTokenMfaConfigType
    #   * {Types::SetUserPoolMfaConfigResponse#mfa_configuration #mfa_configuration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_pool_mfa_config({
    #     user_pool_id: "UserPoolIdType", # required
    #     sms_mfa_configuration: {
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       sms_configuration: {
    #         sns_caller_arn: "ArnType", # required
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #       },
    #     },
    #     software_token_mfa_configuration: {
    #       enabled: false,
    #     },
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_mfa_configuration.sms_authentication_message #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_caller_arn #=> String
    #   resp.sms_mfa_configuration.sms_configuration.external_id #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_region #=> String
    #   resp.software_token_mfa_configuration.enabled #=> Boolean
    #   resp.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfig AWS API Documentation
    #
    # @overload set_user_pool_mfa_config(params = {})
    # @param [Hash] params ({})
    def set_user_pool_mfa_config(params = {}, options = {})
      req = build_request(:set_user_pool_mfa_config, params)
      req.send_request(options)
    end

    # *This action is no longer supported.* You can use it to configure only
    # SMS MFA. You can't use it to configure time-based one-time password
    # (TOTP) software token MFA. To configure either type of MFA, use
    # [SetUserMFAPreference][1] instead.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose user
    #   settings you want to configure.
    #
    # @option params [required, Array<Types::MFAOptionType>] :mfa_options
    #   You can use this parameter only to set an SMS configuration that uses
    #   SMS for delivery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_settings({
    #     access_token: "TokenModelType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS", # accepts SMS, EMAIL
    #         attribute_name: "AttributeNameType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettings AWS API Documentation
    #
    # @overload set_user_settings(params = {})
    # @param [Hash] params ({})
    def set_user_settings(params = {}, options = {})
      req = build_request(:set_user_settings, params)
      req.send_request(options)
    end

    # Registers the user in the specified user pool and creates a user name,
    # password, and user attributes.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to sign up. The value of this
    #   parameter is typically a username, but can be any alias attribute in
    #   your user pool.
    #
    # @option params [required, String] :password
    #   The password of the user you want to register.
    #
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @option params [Array<Types::AttributeType>] :validation_data
    #   Temporary user attributes that contribute to the outcomes of your pre
    #   sign-up Lambda trigger. This set of key-value pairs are for custom
    #   validation of information that you collect from your users but don't
    #   need to retain.
    #
    #   Your Lambda function can analyze this additional data and act on it.
    #   Your function might perform external API operations like logging user
    #   attributes and validation data to Amazon CloudWatch Logs. Validation
    #   data might also affect the response that your function returns to
    #   Amazon Cognito, like automatically confirming the user if they sign up
    #   from within your network.
    #
    #   For more information about the pre sign-up Lambda trigger, see [Pre
    #   sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `SignUp` calls.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced security
    #   evaluates the risk of an authentication event based on the context
    #   that your app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the SignUp API action, Amazon Cognito invokes
    #   any functions that are assigned to the following triggers: *pre
    #   sign-up*, *custom message*, and *post confirmation*. When Amazon
    #   Cognito invokes any of these functions, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your SignUp request. In your
    #   function code in Lambda, you can process the `clientMetadata` value to
    #   enhance your workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::SignUpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SignUpResponse#user_confirmed #user_confirmed} => Boolean
    #   * {Types::SignUpResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #   * {Types::SignUpResponse#user_sub #user_sub} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign_up({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     password: "PasswordType", # required
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     validation_data: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_confirmed #=> Boolean
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #   resp.user_sub #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUp AWS API Documentation
    #
    # @overload sign_up(params = {})
    # @param [Hash] params ({})
    def sign_up(params = {}, options = {})
      req = build_request(:sign_up, params)
      req.send_request(options)
    end

    # Starts the user import.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :job_id
    #   The job ID for the user import job.
    #
    # @return [Types::StartUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJob AWS API Documentation
    #
    # @overload start_user_import_job(params = {})
    # @param [Hash] params ({})
    def start_user_import_job(params = {}, options = {})
      req = build_request(:start_user_import_job, params)
      req.send_request(options)
    end

    # Stops the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :job_id
    #   The job ID for the user import job.
    #
    # @return [Types::StopUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJob AWS API Documentation
    #
    # @overload stop_user_import_job(params = {})
    # @param [Hash] params ({})
    def stop_user_import_job(params = {}, options = {})
      req = build_request(:stop_user_import_job, params)
      req.send_request(options)
    end

    # Assigns a set of tags to an Amazon Cognito user pool. A tag is a label
    # that you can use to categorize and manage user pools in different
    # ways, such as by purpose, owner, environment, or other criteria.
    #
    # Each tag consists of a key and value, both of which you define. A key
    # is a general category for more specific values. For example, if you
    # have two versions of a user pool, one for testing and another for
    # production, you might assign an `Environment` tag key to both user
    # pools. The value of this key might be `Test` for one user pool, and
    # `Production` for the other.
    #
    # Tags are useful for cost tracking and access control. You can activate
    # your tags so that they appear on the Billing and Cost Management
    # console, where you can track the costs associated with your user
    # pools. In an Identity and Access Management policy, you can constrain
    # permissions for user pools based on specific tags or tag values.
    #
    # You can use this action up to 5 times per second, per account. A user
    # pool can have as many as 50 tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the user pool to assign the tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to assign to the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ArnType", # required
    #     tags: { # required
    #       "TagKeysType" => "TagValueType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from an Amazon Cognito user pool. You can
    # use this action up to 5 times per second, per account.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the user pool that the tags are
    #   assigned to.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ArnType", # required
    #     tag_keys: ["TagKeysType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Provides the feedback for an authentication event, whether it was from
    # a valid user or not. This feedback is used for improving the risk
    # evaluation decision for the user pool as part of Amazon Cognito
    # advanced security.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The username of the user that you want to query or modify. The value
    #   of this parameter is typically your user's username, but it can be
    #   any of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :event_id
    #   The event ID.
    #
    # @option params [required, String] :feedback_token
    #   The feedback token.
    #
    # @option params [required, String] :feedback_value
    #   The authentication event feedback value. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level of
    #   risk. When you provide a `FeedbackValue` value of `invalid`, you tell
    #   Amazon Cognito that you don't trust a user session, or you don't
    #   believe that Amazon Cognito evaluated a high-enough risk level.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_auth_event_feedback({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     event_id: "EventIdType", # required
    #     feedback_token: "TokenModelType", # required
    #     feedback_value: "Valid", # required, accepts Valid, Invalid
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateAuthEventFeedback AWS API Documentation
    #
    # @overload update_auth_event_feedback(params = {})
    # @param [Hash] params ({})
    def update_auth_event_feedback(params = {}, options = {})
      req = build_request(:update_auth_event_feedback, params)
      req.send_request(options)
    end

    # Updates the device status. For more information about device
    # authentication, see [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   device status you want to update.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [String] :device_remembered_status
    #   The status of whether a device is remembered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_status({
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered", # accepts remembered, not_remembered
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatus AWS API Documentation
    #
    # @overload update_device_status(params = {})
    # @param [Hash] params ({})
    def update_device_status(params = {}, options = {})
      req = build_request(:update_device_status, params)
      req.send_request(options)
    end

    # Updates the specified group with the specified attributes.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [String] :description
    #   A string containing the new description of the group.
    #
    # @option params [String] :role_arn
    #   The new role Amazon Resource Name (ARN) for the group. This is used
    #   for setting the `cognito:roles` and `cognito:preferred_role` claims in
    #   the token.
    #
    # @option params [Integer] :precedence
    #   The new precedence value for the group. For more information about
    #   this parameter, see [CreateGroup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateGroup.html
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates IdP information for a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The IdP name.
    #
    # @option params [Hash<String,String>] :provider_details
    #   The scopes, URLs, and identifiers for your external identity provider.
    #   The following examples describe the provider detail keys for each IdP
    #   type. These values and their schema are subject to change. Social IdP
    #   `authorize_scopes` values must match the values listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": \{
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" \}`
    #
    #     Describe response: `"ProviderDetails": \{
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" \}`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": \{
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL": "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" \}`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": \{
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #     "rsa-sha256" \}`
    #
    #     The value of `MetadataFile` must be the plaintext metadata document
    #     with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": \{ "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" \}`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": \{ "authorize_scopes":
    #     "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": \{ "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" \}`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": \{ "authorize_scopes":
    #     "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" \}`
    #
    #     Describe response: `"ProviderDetails": \{ "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #     profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" \}`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": \{ "authorize_scopes":
    #     "email name", "client_id": "com.example.cognito", "private_key":
    #     "1EXAMPLE", "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" \}`
    #
    #     Describe response: `"ProviderDetails": \{
    #     "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #     name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #     "client_id": "com.example.cognito", "key_id": "1EXAMPLE",
    #     "oidc_issuer": "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" \}`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": \{ "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret"
    #     \}`
    #
    #     Describe response: `"ProviderDetails": \{ "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" \}`
    #
    # @option params [Hash<String,String>] :attribute_mapping
    #   The IdP attribute mapping to be changed.
    #
    # @option params [Array<String>] :idp_identifiers
    #   A list of IdP identifiers.
    #
    # @return [Types::UpdateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #     provider_details: {
    #       "StringType" => "StringType",
    #     },
    #     attribute_mapping: {
    #       "AttributeMappingKeyType" => "StringType",
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProvider AWS API Documentation
    #
    # @overload update_identity_provider(params = {})
    # @param [Hash] params ({})
    def update_identity_provider(params = {}, options = {})
      req = build_request(:update_identity_provider, params)
      req.send_request(options)
    end

    # Updates the name and scopes of resource server. All other fields are
    # read-only.
    #
    # If you don't provide a value for an attribute, it is set to the
    # default value.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier strings
    #   increase the size of your access tokens.
    #
    # @option params [required, String] :name
    #   The name of the resource server.
    #
    # @option params [Array<Types::ResourceServerScopeType>] :scopes
    #   The scope values to be set for the resource server.
    #
    # @return [Types::UpdateResourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourceServerResponse#resource_server #resource_server} => Types::ResourceServerType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #     name: "ResourceServerNameType", # required
    #     scopes: [
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_server.user_pool_id #=> String
    #   resp.resource_server.identifier #=> String
    #   resp.resource_server.name #=> String
    #   resp.resource_server.scopes #=> Array
    #   resp.resource_server.scopes[0].scope_name #=> String
    #   resp.resource_server.scopes[0].scope_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateResourceServer AWS API Documentation
    #
    # @overload update_resource_server(params = {})
    # @param [Hash] params ({})
    def update_resource_server(params = {}, options = {})
      req = build_request(:update_resource_server, params)
      req.send_request(options)
    end

    # With this operation, your users can update one or more of their
    # attributes with their own credentials. You authorize this API request
    # with the user's access token. To delete an attribute from your user,
    # submit the attribute in your API request with a blank value. Custom
    # attribute values in this request must include the `custom:` prefix.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   If you have set an attribute to require verification before Amazon
    #   Cognito updates its value, this request doesn’t immediately update the
    #   value of that attribute. After your user receives and responds to a
    #   verification message to verify the new value, Amazon Cognito updates
    #   the attribute value. Your user can sign in and receive messages with
    #   the original attribute value until they verify the new value.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose user
    #   attributes you want to update.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action initiates.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the UpdateUserAttributes API action, Amazon
    #   Cognito invokes the function that is assigned to the *custom message*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your UpdateUserAttributes request.
    #   In your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::UpdateUserAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserAttributesResponse#code_delivery_details_list #code_delivery_details_list} => Array&lt;Types::CodeDeliveryDetailsType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_attributes({
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     access_token: "TokenModelType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details_list #=> Array
    #   resp.code_delivery_details_list[0].destination #=> String
    #   resp.code_delivery_details_list[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details_list[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributes AWS API Documentation
    #
    # @overload update_user_attributes(params = {})
    # @param [Hash] params ({})
    def update_user_attributes(params = {}, options = {})
      req = build_request(:update_user_attributes, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # Updates the specified user pool with the specified attributes. You can
    # get a list of the current user pool settings using
    # [DescribeUserPool][3].
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][4]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][5]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to update.
    #
    # @option params [Types::UserPoolPolicyType] :policies
    #   A container with the policies you want to update in a user pool.
    #
    # @option params [String] :deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of your
    #   user pool. Before you can delete a user pool that you have protected
    #   against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool` API
    #   request, Amazon Cognito returns an `InvalidParameterException` error.
    #   To delete a protected user pool, send a new `DeleteUserPool` request
    #   after you deactivate deletion protection in an `UpdateUserPool` API
    #   request.
    #
    # @option params [Types::LambdaConfigType] :lambda_config
    #   The Lambda configuration information from the request to update the
    #   user pool.
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   The attributes that are automatically verified when Amazon Cognito
    #   requests to update user pools.
    #
    # @option params [String] :sms_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #
    # @option params [String] :email_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #
    # @option params [String] :email_verification_subject
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #
    # @option params [Types::VerificationMessageTemplateType] :verification_message_template
    #   The template for verification messages.
    #
    # @option params [String] :sms_authentication_message
    #   The contents of the SMS authentication message.
    #
    # @option params [Types::UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a user-pool
    #   setting that tells Amazon Cognito how to handle changes to the value
    #   of your users' email address and phone number attributes. For more
    #   information, see [ Verifying updates to email addresses and phone
    #   numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #
    # @option params [String] :mfa_configuration
    #   Possible values include:
    #
    #   * `OFF` - MFA tokens aren't required and can't be specified during
    #     user registration.
    #
    #   * `ON` - MFA tokens are required for all user registrations. You can
    #     only specify ON when you're initially creating a user pool. You can
    #     use the [SetUserPoolMfaConfig][1] API operation to turn MFA "ON"
    #     for existing user pools.
    #
    #   * `OPTIONAL` - Users have the option when registering to create an MFA
    #     token.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html
    #
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   The device-remembering configuration for a user pool. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature.
    #
    #    </note>
    #
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for email invitation and verification messages from your
    #   user pool.
    #
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   The SMS configuration with the settings that your Amazon Cognito user
    #   pool must use to send an SMS message from your Amazon Web Services
    #   account through Amazon Simple Notification Service. To send SMS
    #   messages with Amazon SNS in the Amazon Web Services Region that you
    #   want, the Amazon Cognito user pool uses an Identity and Access
    #   Management (IAM) role in your Amazon Web Services account.
    #
    # @option params [Hash<String,String>] :user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #
    # @option params [Types::UserPoolAddOnsType] :user_pool_add_ons
    #   User pool add-ons. Contains settings for activation of advanced
    #   security features. To log user security information but take no
    #   action, set to `AUDIT`. To configure automatic security responses to
    #   risky traffic to your user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #
    # @option params [Types::AccountRecoverySettingType] :account_recovery_setting
    #   The available verified method a user can use to recover their password
    #   when they call `ForgotPassword`. You can use this setting to define a
    #   preferred method when a user has more than one method available. With
    #   this setting, SMS doesn't qualify for a valid password recovery
    #   mechanism if the user also has SMS multi-factor authentication (MFA)
    #   activated. In the absence of this setting, Amazon Cognito uses the
    #   legacy behavior to determine the recovery method where SMS is
    #   preferred through email.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         password_history_size: 1,
    #         temporary_password_validity_days: 1,
    #       },
    #     },
    #     deletion_protection: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     lambda_config: {
    #       pre_sign_up: "ArnType",
    #       custom_message: "ArnType",
    #       post_confirmation: "ArnType",
    #       pre_authentication: "ArnType",
    #       post_authentication: "ArnType",
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #       pre_token_generation: "ArnType",
    #       user_migration: "ArnType",
    #       pre_token_generation_config: {
    #         lambda_version: "V1_0", # required, accepts V1_0, V2_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_sms_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       kms_key_id: "ArnType",
    #     },
    #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     verification_message_template: {
    #       sms_message: "SmsVerificationMessageType",
    #       email_message: "EmailVerificationMessageType",
    #       email_subject: "EmailVerificationSubjectType",
    #       email_message_by_link: "EmailVerificationMessageByLinkType",
    #       email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #       default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #     },
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: ["phone_number"], # accepts phone_number, email
    #     },
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false,
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #       email_sending_account: "COGNITO_DEFAULT", # accepts COGNITO_DEFAULT, DEVELOPER
    #       from: "StringType",
    #       configuration_set: "SESConfigurationSet",
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "ArnType", # required
    #       external_id: "StringType",
    #       sns_region: "RegionCodeType",
    #     },
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType",
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       },
    #     },
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #       advanced_security_additional_flows: {
    #         custom_auth_mode: "AUDIT", # accepts AUDIT, ENFORCED
    #       },
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: "verified_email", # required, accepts verified_email, verified_phone_number, admin_only
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPool AWS API Documentation
    #
    # @overload update_user_pool(params = {})
    # @param [Hash] params ({})
    def update_user_pool(params = {}, options = {})
      req = build_request(:update_user_pool, params)
      req.send_request(options)
    end

    # Updates the specified user pool app client with the specified
    # attributes. You can get a list of the current user pool app client
    # settings using [DescribeUserPoolClient][1].
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # You can also use this operation to enable token revocation for user
    # pool clients. For more information about revoking tokens, see
    # [RevokeToken][2].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html
    # [2]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to update the user
    #   pool client.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :client_name
    #   The client name from the update user pool client request.
    #
    # @option params [Integer] :refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request is
    #   days. You can't set `RefreshTokenValidity` to 0. If you do, Amazon
    #   Cognito overrides the value with the default value of 30 days. *Valid
    #   range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #
    # @option params [Integer] :access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`, set
    #   a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #
    # @option params [Integer] :id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity` as
    #   `seconds`, `minutes`, `hours`, or `days`, set a `TokenValidityUnits`
    #   value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #
    # @option params [Types::TokenValidityUnitsType] :token_validity_units
    #   The time units you use when you set the duration of ID, access, and
    #   refresh tokens. The default unit for RefreshToken is days, and the
    #   default for ID and access tokens is hours.
    #
    # @option params [Array<String>] :read_attributes
    #   The list of user attributes that you want your app client to have
    #   read-only access to. After your user authenticates in your app, their
    #   access token authorizes them to read their own attribute value for any
    #   attribute in this list. An example of this kind of activity is when
    #   your user selects a link to view their profile information. Your app
    #   makes a [GetUser][1] API request to retrieve and display your user's
    #   profile data.
    #
    #   When you don't specify the `ReadAttributes` for your app client, your
    #   app can read the values of `email_verified`, `phone_number_verified`,
    #   and the Standard attributes of your user pool. When your user pool has
    #   read access to these default attributes, `ReadAttributes` doesn't
    #   return any information. Amazon Cognito only populates `ReadAttributes`
    #   in the API response if you have specified your own custom set of read
    #   attributes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_GetUser.html
    #
    # @option params [Array<String>] :write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list. An example of this kind of
    #   activity is when you present your user with a form to update their
    #   profile information and they change their last name. Your app then
    #   makes an [UpdateUserAttributes][1] API request and sets `family_name`
    #   to the new value.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your user
    #   pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information. Amazon
    #   Cognito only populates `WriteAttributes` in the API response if you
    #   have specified your own custom set of write attributes.
    #
    #   If your app client allows users to sign in through an IdP, this array
    #   must include all attributes that you have mapped to IdP attributes.
    #   Amazon Cognito updates mapped attributes when users sign in to your
    #   application through an IdP. If your app client does not have write
    #   access to a mapped attribute, Amazon Cognito throws an error when it
    #   tries to update the attribute. For more information, see [Specifying
    #   IdP Attribute Mappings for Your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UpdateUserAttributes.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   The authentication flows that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a user
    #   name and Secure Remote Password (SRP), a user name and password, or a
    #   custom authentication process that you define with Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your user
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`, and
    #   `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito in
    #     the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #
    # @option params [Array<String>] :supported_identity_providers
    #   A list of provider names for the IdPs that this client supports. The
    #   following are supported: `COGNITO`, `Facebook`, `Google`,
    #   `SignInWithApple`, `LoginWithAmazon`, and the names of your own SAML
    #   and OIDC providers.
    #
    # @option params [Array<String>] :callback_urls
    #   A list of allowed redirect (callback) URLs for the IdPs.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as `myapp://example` are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #
    # @option params [Array<String>] :logout_urls
    #   A list of allowed logout URLs for the IdPs.
    #
    # @option params [String] :default_redirect_uri
    #   The default redirect URI. Must be in the `CallbackURLs` list.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for `http://localhost`
    #   for testing purposes only.
    #
    #   App callback URLs such as `myapp://example` are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   The allowed OAuth flows.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token (and, optionally, ID token, based on scopes)
    #     directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly to
    #     a non-person user using a combination of the client ID and client
    #     secret.
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   The allowed OAuth scopes. Possible values provided by OAuth are
    #   `phone`, `email`, `openid`, and `profile`. Possible values provided by
    #   Amazon Web Services are `aws.cognito.signin.user.admin`. Custom scopes
    #   created in Resource Servers are also supported.
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 features in your user pool app client.
    #
    #   `AllowedOAuthFlowsUserPoolClient` must be `true` before you can
    #   configure the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use OAuth 2.0 features, configure one of these features in the
    #   Amazon Cognito console or set `AllowedOAuthFlowsUserPoolClient` to
    #   `true` in a `CreateUserPoolClient` or `UpdateUserPoolClient` API
    #   request. If you don't set a value for
    #   `AllowedOAuthFlowsUserPoolClient` in a request with the CLI or SDKs,
    #   it defaults to `false`.
    #
    # @option params [Types::AnalyticsConfigurationType] :analytics_configuration
    #   The Amazon Pinpoint analytics configuration necessary to collect
    #   metrics for this user pool.
    #
    #   <note markdown="1"> In Amazon Web Services Regions where Amazon Pinpoint isn't available,
    #   user pools only support sending events to Amazon Pinpoint projects in
    #   us-east-1. In Regions where Amazon Pinpoint is available, user pools
    #   support sending events to Amazon Pinpoint projects within that same
    #   Region.
    #
    #    </note>
    #
    # @option params [String] :prevent_user_existence_errors
    #   Errors and responses that you want Amazon Cognito APIs to return
    #   during authentication, account confirmation, and password recovery
    #   when the user doesn't exist in the user pool. When set to `ENABLED`
    #   and the user doesn't exist, authentication returns an error
    #   indicating either the username or password was incorrect. Account
    #   confirmation and password recovery return a response indicating a code
    #   was sent to a simulated destination. When set to `LEGACY`, those APIs
    #   return a `UserNotFoundException` exception if the user doesn't exist
    #   in the user pool.
    #
    #   Valid values include:
    #
    #   * `ENABLED` - This prevents user existence-related errors.
    #
    #   * `LEGACY` - This represents the early behavior of Amazon Cognito
    #     where user existence related errors aren't prevented.
    #
    #   Defaults to `LEGACY` when you don't provide a value.
    #
    # @option params [Boolean] :enable_token_revocation
    #   Activates or deactivates token revocation. For more information about
    #   revoking tokens, see [RevokeToken][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    #
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   Activates the propagation of additional user context data. For more
    #   information about propagation of user context data, see [ Adding
    #   advanced security to a user pool][1]. If you don’t include this
    #   parameter, you can't send device fingerprint information, including
    #   source IP address, to Amazon Cognito advanced security. You can only
    #   activate `EnablePropagateAdditionalUserContextData` in an app client
    #   that has a client secret.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #
    # @option params [Integer] :auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #
    # @return [Types::UpdateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     client_name: "ClientNameType",
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: "seconds", # accepts seconds, minutes, hours, days
    #       id_token: "seconds", # accepts seconds, minutes, hours, days
    #       refresh_token: "seconds", # accepts seconds, minutes, hours, days
    #     },
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_urls: ["RedirectUrlType"],
    #     logout_urls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: "HexStringType",
    #       application_arn: "ArnType",
    #       role_arn: "ArnType",
    #       external_id: "StringType",
    #       user_data_shared: false,
    #     },
    #     prevent_user_existence_errors: "LEGACY", # accepts LEGACY, ENABLED
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false,
    #     auth_session_validity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.access_token_validity #=> Integer
    #   resp.user_pool_client.id_token_validity #=> Integer
    #   resp.user_pool_client.token_validity_units.access_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.id_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.refresh_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.user_pool_client.prevent_user_existence_errors #=> String, one of "LEGACY", "ENABLED"
    #   resp.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #   resp.user_pool_client.auth_session_validity #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClient AWS API Documentation
    #
    # @overload update_user_pool_client(params = {})
    # @param [Hash] params ({})
    def update_user_pool_client(params = {}, options = {})
      req = build_request(:update_user_pool_client, params)
      req.send_request(options)
    end

    # Updates the Secure Sockets Layer (SSL) certificate for the custom
    # domain for your user pool.
    #
    # You can use this operation to provide the Amazon Resource Name (ARN)
    # of a new certificate to Amazon Cognito. You can't use it to change
    # the domain for a user pool.
    #
    # A custom domain is used to host the Amazon Cognito hosted UI, which
    # provides sign-up and sign-in pages for your application. When you set
    # up a custom domain, you provide a certificate that you manage with
    # Certificate Manager (ACM). When necessary, you can use this operation
    # to change the certificate that you applied to your custom domain.
    #
    # Usually, this is unnecessary following routine certificate renewal
    # with ACM. When you renew your existing certificate in ACM, the ARN for
    # your certificate remains the same, and your custom domain uses the new
    # certificate automatically.
    #
    # However, if you replace your existing certificate with a new one, ACM
    # gives the new certificate a new ARN. To apply the new certificate to
    # your custom domain, you must provide this ARN to Amazon Cognito.
    #
    # When you add your new certificate in ACM, you must choose US East (N.
    # Virginia) as the Amazon Web Services Region.
    #
    # After you submit your request, Amazon Cognito requires up to 1 hour to
    # distribute your new certificate to your custom domain.
    #
    # For more information about adding a custom domain to your user pool,
    # see [Using Your Own Domain for the Hosted UI][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :domain
    #   The domain name for the custom domain that hosts the sign-up and
    #   sign-in pages for your application. One example might be
    #   `auth.example.com`.
    #
    #   This string can include only lowercase letters, numbers, and hyphens.
    #   Don't use a hyphen for the first or last character. Use periods to
    #   separate subdomain names.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that is associated with the custom domain
    #   whose certificate you're updating.
    #
    # @option params [required, Types::CustomDomainConfigType] :custom_domain_config
    #   The configuration for a custom domain that hosts the sign-up and
    #   sign-in pages for your application. Use this object to specify an SSL
    #   certificate that is managed by ACM.
    #
    # @return [Types::UpdateUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserPoolDomainResponse#cloud_front_domain #cloud_front_domain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     custom_domain_config: { # required
    #       certificate_arn: "ArnType", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_domain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolDomain AWS API Documentation
    #
    # @overload update_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def update_user_pool_domain(params = {}, options = {})
      req = build_request(:update_user_pool_domain, params)
      req.send_request(options)
    end

    # Use this API to register a user's entered time-based one-time
    # password (TOTP) code and mark the user's software token MFA status as
    # "verified" if successful. The request takes an access token or a
    # session string, but not both.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   software token you want to verify.
    #
    # @option params [String] :session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service.
    #
    # @option params [required, String] :user_code
    #   The one- time password computed using the secret code returned by
    #   [AssociateSoftwareToken][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html
    #
    # @option params [String] :friendly_device_name
    #   The friendly device name.
    #
    # @return [Types::VerifySoftwareTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifySoftwareTokenResponse#status #status} => String
    #   * {Types::VerifySoftwareTokenResponse#session #session} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_software_token({
    #     access_token: "TokenModelType",
    #     session: "SessionType",
    #     user_code: "SoftwareTokenMFAUserCodeType", # required
    #     friendly_device_name: "StringType",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "SUCCESS", "ERROR"
    #   resp.session #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareToken AWS API Documentation
    #
    # @overload verify_software_token(params = {})
    # @param [Hash] params ({})
    def verify_software_token(params = {}, options = {})
      req = build_request(:verify_software_token, params)
      req.send_request(options)
    end

    # Verifies the specified user attributes in the user pool.
    #
    # If your user pool requires verification before Amazon Cognito updates
    # the attribute value, VerifyUserAttribute updates the affected
    # attribute to its pending value. For more information, see [
    # UserAttributeUpdateSettingsType][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose user
    #   attributes you want to verify.
    #
    # @option params [required, String] :attribute_name
    #   The attribute name in the request to verify user attributes.
    #
    # @option params [required, String] :code
    #   The verification code in the request to verify user attributes.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_user_attribute({
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     code: "ConfirmationCodeType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifyUserAttribute AWS API Documentation
    #
    # @overload verify_user_attribute(params = {})
    # @param [Hash] params ({})
    def verify_user_attribute(params = {}, options = {})
      req = build_request(:verify_user_attribute, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CognitoIdentityProvider')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cognitoidentityprovider'
      context[:gem_version] = '1.102.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
