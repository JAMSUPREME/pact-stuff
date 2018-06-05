ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require 'pact/consumer/minitest'

require File.expand_path '../../app.rb', __FILE__

Pact.service_consumer "Client App" do
  has_pact_with "Remote Service" do
    mock_service :remote_hello do
      port RemoteClient.port
    end
  end
end