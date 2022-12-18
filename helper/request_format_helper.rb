# frozen_string_literal: true

module RequestFormatHelper
  def deep_snakeize!(params)
    params.deep_transform_keys!(&:underscore)
  end
end
