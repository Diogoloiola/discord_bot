# frozen_string_literal: true
require "faraday"
require "faraday/multipart"
require_relative "../lib/api/messages"
require_relative "../lib/models/message"

module Discord
  class Client
    attr_reader :adapter, :base_url

    def initialize(base_url, adapter: Faraday.default_adapter)
      @base_url = base_url
      @adapter = adapter
    end

    def messages
      Discord::Api::Messages.new(self)
    end

    def connection
      @connection ||= Faraday.new(@base_url) do |con|
        con.request :json
        con.response :json, content_type: "application/json", parser_options: { symbolize_names: true }
        con.adapter adapter
      end
    end
  end
end
