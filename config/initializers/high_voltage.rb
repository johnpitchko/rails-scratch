# frozen_string_literal: true

HighVoltage.configure do |config|
  # Set the site root page to /app/views/pages/index.html.erb
  config.home_page = 'index'

  # Top-level routes: eliminate the need to specify '.../pages'...' folder in URL
  config.route_drawer = HighVoltage::RouteDrawers::Root
end
