# frozen_string_literal: true

module BancoBrasilPayments::BaseApi
  def call_api_client(api_client:, http_method:, path:, data_only: true, client_opts: {})
    data, status_code, headers = api_client.call_api(http_method, path, client_opts)

    if api_client.config.debugging
      api_client.config.logger.debug "API called: BatchPaymentsApi#consult_payments\n"\
      "Data: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
    end

    return data if data_only
    return data, status_code, headers
  end

  def validations(api_client:, body: nil, validate_body: false, required_params: {})
    label = caller_locations(1, 1)[0].label

    if api_client.config.debugging
      api_client.config.logger.debug "Calling API: BatchPaymentsApi.#{label} ..."
    end
    return unless api_client.config.client_side_validation

    # verify the required parameter 'gw_app_key' is set
    if gw_app_key.nil?
      fail ArgumentError, "Missing the required parameter 'gw_app_key' when calling BatchPaymentsApi.#{label}"
    end

    required_params.each do |par_name, par_value|
      next unless par_value.nil?

      fail ArgumentError, "Missing the required parameter '#{par_name}' when calling BatchPaymentsApi.#{label}"
    end

    return unless validate_body
    if body.nil? || !body.valid?
      base_msg = "Invalid required parameter 'body' when calling BatchPaymentsApi.#{label}. "
      reason_msg = "Parameter missing" if body.nil?
      reason_msg = "#{body.list_invalid_properties}" if body.present?
      fail ArgumentError, "#{base_msg} #{reason_msg}"
    end
  end

  def build_client_opts(api_client:, gw_app_key:, opts:, return_type: 'Object', body: nil)
    client_opts = {
      base_path: '/pagamentos-lote/v1',
      body: opts[:body] || body,
      form_params: opts[:form_params] || {},
      return_type: opts[:return_type] || return_type,
      auth_names: opts[:auth_names] || ['OAuth2-CC'],
      query_params: opts[:query_params] || {},
      header_params: opts[:header_params] || {}
    }

    # query parameters
    client_opts[:query_params][api_client.config.app_key_name.to_sym] = gw_app_key

    # HTTP header 'Accept' (if needed)
    client_opts[:header_params]['Accept'] = api_client.select_header_accept(['application/json'])

    client_opts
  end
end
