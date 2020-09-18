module Zenvia
  class Connection
    def self.connect
      Faraday.new(
        url: Zenvia.configuration.api_base,
        headers: {'X-API-TOKEN': Zenvia.configuration.token, 'Content-Type': 'application/json'}
      )
    end
  end
end
