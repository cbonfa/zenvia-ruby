module Zenvia
  class WhatsApp
    @api_url = "/v1/channels/whatsapp/messages"
    @conn = nil

    def self.connect
      @conn = Zenvia::Connection.connect
    end

    def self.send_text(to:, message:)
      connect
      @conn.post(@api_url) do |req|
        req.body = {
          from: Zenvia.configuration.whatsapp_from,
          to: to,
          contents: [{
            type: 'text',
            text: message
          }]
        }.to_json
      end
    end

    def self.send_template(to:, template_id:, fields:)
      connect
      @conn.post(@api_url) do |req|
        req.body = {
          from: Zenvia.configuration.whatsapp_from,
          to: to,
          contents: [{
            type: 'template',
            'templateId': template_id,
            fields: fields
          }]
        }.to_json
      end
    end
  end
end
