class MyApp
  def call(_env)
    [200, { 'Content-Type' => 'text/html' }, ['Hello rackup']]
  end
end

run MyApp.new
