# frozen_string_literal: true

module ResponseFormatHelper
  using Module.new {
    refine ResponseFormatHelper do
      def camelize(data)
        data.deep_transform_keys! { |k| k.camelize(:lower) }
      end
    end
  }

  def deep_camelize!
    body = response.body.first

    if JSON.parse(body).instance_of?(Array)
      return JSON.parse(body).map do |data|
        camelize(data)
      end
    end

    camelize(JSON.parse(body))
  end
end
