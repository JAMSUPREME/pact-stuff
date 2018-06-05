require File.expand_path '../test_helper.rb', __FILE__

class HelloTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hi
    get '/'
    assert last_response.ok?
    assert_equal "hi", last_response.body
  end
end