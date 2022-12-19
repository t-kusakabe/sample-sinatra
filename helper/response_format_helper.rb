# frozen_string_literal: true

module ResponseFormatHelper
  using Module.new {
    refine ResponseFormatHelper do
      def camelize(data)
        data.deep_transform_keys! { |k| k.camelize(:lower) }
      end

      def array_in_inside?(array)
        array.instance_of?(Array) ? array_in_inside?(array.first) : array
      end
    end
  }

  def deep_camelize!
    body = response.body.first

    return camelize(JSON.parse(body)) if JSON.parse(body).instance_of?(Hash)
    return body unless JSON.parse(body).instance_of?(Array)

    extracted_data = array_in_inside?(JSON.parse(body))
    return camelize(extracted_data) if extracted_data.instance_of?(Hash)

    body
  end
end
