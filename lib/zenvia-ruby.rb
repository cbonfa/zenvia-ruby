require "logger"
require "forwardable"
require "faraday"
require "json"
require "zenvia/configuration"
require "zenvia/connection"
require "zenvia/whats_app"

module Zenvia
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

end
