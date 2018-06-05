class RemoteClient
  def self.get_hello
    Typhoeus.get(endpoint).body
  end
  def self.endpoint
    "localhost:#{port}"
  end
  def self.port
    9002
  end
end