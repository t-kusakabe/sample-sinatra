# frozen_string_literal: true

module LoggerHelper
  def log(str)
    settings.logger.info(str)
  end
end
