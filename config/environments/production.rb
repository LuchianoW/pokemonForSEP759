require "active_support/core_ext/integer/time"

Rails.application.configure do
  # 强制使用 HTTPS
  config.force_ssl = true

  # 设置默认 URL 选项
  config.action_controller.default_url_options = {
    host: ENV.fetch('HOST', 'pokemonforsep759.onrender.com'),
    protocol: ENV.fetch('PROTOCOL', 'https')
  }

  # 信任 Render 的反向代理
  config.action_dispatch.trusted_proxies = [IPAddr.new("0.0.0.0/0")]

  # 其他配置
  config.eager_load = true
  config.consider_all_requests_local = false
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.log_level = :debug
  config.log_tags = [:request_id]
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end
end