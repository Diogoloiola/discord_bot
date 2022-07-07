require "./lib/types"

module Discord
  module Models
    class Embed < Dry::Struct
      attribute :title, Types::Strict::String.optional.default(nil)
      attribute :description, Types::Strict::String.optional.default(nil)
      attribute :author, Types::Strict::String.optional.default(nil)
      attribute :url, Types::Strict::String.optional.default(nil)
      attribute :timestamp, Types::Strict::String.optional.default(nil)
      attribute :color, Types::Strict::Integer.optional.default(nil)
    end
  end
end
