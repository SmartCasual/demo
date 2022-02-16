require_relative "app"

Rack::Server.start(app: App.new, Port: 9292)
