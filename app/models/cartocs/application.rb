module Cartocs
  class Application < ActiveResource::Base
    self.site = Setting["plugin_redmine_cartocs"]["private_url"]
    self.headers['X-Api-Token'] = ENV['CARTOCS_TOKEN'] if ENV['CARTOCS_TOKEN'].present?
    self.timeout = 5

    def self.public_url(path="")
      settings = Setting["plugin_redmine_cartocs"]
      host = if settings["public_url"].present?
        settings["public_url"]
      else
        settings["private_url"]
      end
      (URI(host)+path).to_s
    end
  end
end