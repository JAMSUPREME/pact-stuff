require 'pact/consumer/minitest'
require_relative 'provider_states'

Pact.service_provider "Hi provider" do

  honours_pact_with 'Hi consumer' do

    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/pact-foundation/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.

    pact_uri '../sinatra-1/spec/pacts/client_app-remote_service.json'
  end
end