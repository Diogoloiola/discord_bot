module Discord
  class BaseRequest
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def post(url, params, body)
      response = @client.connection.post(url) do |req|
        req.params = params
        req.body = body
      end
      handle_response response, 204
    end

    def get(url)
      @client.connection.get(url)
      handle_response response, 200
    end

    def patch(url, params, body)
      response = @client.connection.patch(url) do |req|
        req.params = params
        req.body = body
      end
      handle_response response, 204
    end

    def delete(url)
      @client.connection.delete(url)
    end

    private

    def handle_response(response, status_code)
      raise "Error caught, make sure you did everything right" if response.status != status_code
    end
  end
end
