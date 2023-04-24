# frozen_string_literal: true

# TODO: add generic methods and args verifications
module BancoBrasilPayments::Base
  def without_http_info_meths(*method_names)
    method_names.compact.each do |method_name|
      define_method(method_name) { |*args, &block| send("#{method_name}_with_http_info", *args, &block)[0] }
    end
  end
end
