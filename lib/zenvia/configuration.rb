module Zenvia
  class Configuration
    attr_accessor :api_base, :token, :whatsapp_from

    def initialize
      @api_base = 'https://api.zenvia.com/'
    end
  end
end
