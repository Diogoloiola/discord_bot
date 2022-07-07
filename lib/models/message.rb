require "./lib/types"
require "./lib/models/embed"

module Discord
  module Models
    class Message < Dry::Struct
      attribute :content, Types::Coercible::String.optional.default(nil)
      attribute :tts, Types::Bool.optional.default(false)
      attribute :embeds?, Types::Strict::Array.of(Discord::Models::Embed)
    end
  end
end
