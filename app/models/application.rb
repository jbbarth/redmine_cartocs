class Application < ActiveResource::Base
  self.site = Setting["plugin_redmine_cartocs"]["private_url"]
  self.timeout = 5

  def self.public_url
    settings = Setting["plugin_redmine_cartocs"]
    if settings["public_url"].present?
      settings["public_url"]
    else
      settings["private_url"]
    end
  end
end
