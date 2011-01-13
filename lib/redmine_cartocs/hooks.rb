class RedmineCartocsHooks < Redmine::Hook::ViewListener
  #adds servers to project page
  render_on :view_projects_show_right, :partial => 'cartocs/view_projects_show_right'
end
