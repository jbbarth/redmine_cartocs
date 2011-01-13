require 'redmine'
require 'redmine_cartocs/hooks'

Redmine::Plugin.register :redmine_cartocs do
  name 'Redmine Cartocs plugin'
  author 'Jean-Baptiste BARTH'
  description 'Cartocs integration'
  author_url 'mailto:jeanbaptiste.barth@gmail.com'
  requires_redmine :version_or_higher => '1.0.5'
  version '0.1'
  settings :default => {
    'url' => 'http://localhost:3001/',
  }, :partial => 'settings/cartocs_settings'
end
