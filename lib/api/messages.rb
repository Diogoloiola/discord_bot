require "./lib/base"

module Discord
  module Api
    class Messages < BaseRequest
      def create(body, params: {})
        post("", params, body)
      end

      def read(id)
        get("/messages/#{id}")
      end

      def update(id, body, params: {})
        patch("/messages/#{id}", body, params)
      end

      def delete(id)
        delete("/messages/#{id}")
      end
    end
  end
end
