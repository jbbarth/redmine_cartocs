require 'redmine'
require 'redmine_cartocs/hooks'

Redmine::Plugin.register :redmine_cartocs do
  name 'Redmine Cartocs plugin'
  author 'Jean-Baptiste BARTH'
  description 'Cartocs integration'
  author_url 'mailto:jeanbaptiste.barth@gmail.com'
  requires_redmine :version_or_higher => '2.0.0'
  version '0.2'
  settings :default => {
    'private_url' => 'http://cartocs.app.ac.cs/',
    'public_url'  => 'http://cartocs.application.ac.centre-serveur.i2/'
  }, :partial => 'settings/cartocs_settings'
  project_module :cartocs do
    permission :view_items_on_project_overview, {}
  end
end
