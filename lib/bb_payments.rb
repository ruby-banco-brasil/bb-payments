=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

# Common files
require 'bb_oauth'
require 'bb_payments/api_client'
require 'bb_payments/api_error'
require 'bb_payments/version'
require 'bb_payments/configuration'

# Models
require 'bb_payments/models/base_model'
require 'bb_payments/models/body'
require 'bb_payments/models/batch_pix_body'
require 'bb_payments/models/transfer_pix_base'
require 'bb_payments/models/transfer_pix'
require 'bb_payments/models/batch_pix_response'
require 'bb_payments/models/batch_transfers_body'
require 'bb_payments/models/batch_transfers_response'
require 'bb_payments/models/devolution.rb'
require 'bb_payments/models/transfer_base'
require 'bb_payments/models/find_batch_payment.rb'
require 'bb_payments/models/find_batch_response.rb'
require 'bb_payments/models/find_payment_response.rb'
require 'bb_payments/models/find_payment_pix_response.rb'
require 'bb_payments/models/find_releases_response.rb'
require 'bb_payments/models/release.rb'
require 'bb_payments/models/error'
require 'bb_payments/models/error_errors'
require 'bb_payments/models/error_o_auth_unauthorized'
require 'bb_payments/models/error_o_auth_unauthorized_attributes'
require 'bb_payments/models/inline_response_200'
require 'bb_payments/models/inline_response_200_1'
require 'bb_payments/models/inline_response_200_1_ocurrences_list'
require 'bb_payments/models/inline_response_200_2'
require 'bb_payments/models/inline_response_200_2_payments_list'
require 'bb_payments/models/inline_response_200_3'
require 'bb_payments/models/inline_response_200_3_lista_boleto'
require 'bb_payments/models/inline_response_200_3_lista_devolucao'
require 'bb_payments/models/inline_response_200_payments_list'
require 'bb_payments/models/inline_response_201'
require 'bb_payments/models/inline_response_201_1'
require 'bb_payments/models/inline_response_201_1_payments_list'
require 'bb_payments/models/inline_response_201_payments_list'
require 'bb_payments/models/inline_response_400'
require 'bb_payments/models/inline_response_401'
require 'bb_payments/models/root_type_for_bank_slip_list'
require 'bb_payments/models/root_type_for_bank_slips_batch_payment'
require 'bb_payments/models/root_type_for_bank_slips_batch_payment_response_object'
require 'bb_payments/models/root_type_for_batch_transfer_get_response_object'
require 'bb_payments/models/root_type_for_batch_transfer_payments_list_get'
require 'bb_payments/models/root_type_for_batch_transfers_cancel_payments_list_object'
require 'bb_payments/models/root_type_for_batch_transfers_cancel_request_object'
require 'bb_payments/models/root_type_for_batch_transfers_cancel_response_object'
require 'bb_payments/models/root_type_for_returned_payments_details'
require 'bb_payments/models/root_type_for_returned_payments_response_object'
require 'bb_payments/models/root_type_for_slips_details_object'

# APIs
require 'bb_payments/api/base_api'
require 'bb_payments/api/transfers'
require 'bb_payments/api/transfers_pix'
require 'bb_payments/api/payments'
require 'bb_payments/api/batch_payments_api'

module BancoBrasilPayments
  class << self
    # Customize default settings for the SDK using block.
    #   BancoBrasilPayments.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
