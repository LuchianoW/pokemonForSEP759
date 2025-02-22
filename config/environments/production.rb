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

  # 其他配置...
  config.force_ssl = true
  config.action_dispatch.trusted_proxies = [IPAddr.new("0.0.0.0/0")]
  config.action_controller.default_url_options = { host: ENV['HOST'], protocol: 'https' }
  config.eager_load = true
end