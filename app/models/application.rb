class Application < ActiveResource::Base
  self.site = Setting["plugin_redmine_cartocs"]["url"]
  self.timeout = 5
end
