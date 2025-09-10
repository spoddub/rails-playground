# app.rb
require 'rack'
require 'thin'

class MyApp # rubocop:disable Style/Documentation
  def call(env)
    [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['Hello!']]
  end
end

Thin::Server.start('127.0.0.1', 8080, MyApp.new)
