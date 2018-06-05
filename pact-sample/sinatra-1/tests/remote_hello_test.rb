require File.expand_path '../test_helper.rb', __FILE__

describe RemoteClient do

  include Pact::Consumer::Minitest

  describe "When calling remote hello" do

    before do
      remote_hello.given("there is a remote server").
          upon_receiving("a request for hi")
          .with(
              method: :get,
              path: '/',)
          .will_respond_with(
              status: 200,
              body: 'hi'
          )
    end

    it "should say hi" do
      assert_equal RemoteClient.get_hello, 'hi'
    end

  end
end