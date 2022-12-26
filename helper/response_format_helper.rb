# frozen_string_literal: true

module ResponseFormatHelper
  using Module.new {
    refine ResponseFormatHelper do
      def camelize(data)
        return data unless data.instance_of?(Hash)
        data.deep_transform_keys! { |k| k.camelize(:lower) }
      end

      def array_in_inside?(array)
        array.instance_of?(Array) ? array_in_inside?(array.first) : camelize(array)
      end
    end
  }

  def deep_camelize!
    body = JSON.parse(response.body.first)

    return camelize(body) if body.instance_of?(Hash)
    return body unless body.instance_of?(Array)

    body.map { |row| array_in_inside?(row) }
  end
end
