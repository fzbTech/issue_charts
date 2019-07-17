Redmine::Plugin.register :issue_charts do

  name 'Issue Charts plugin'
  author 'Dare Auto Inc'
  description 'Provides the capability to create charts and graphs for project issues.'
  version '2.0.0'
  url 'https://github.com/fzbTech/issue_charts'
  author_url ''

  project_module :charts do
    permission :view_charts, :charts => [:index, :show]
    permission :create_charts, :charts => [:new, :create, :destroy]
    permission :create_public_charts, :charts => [:new, :create, :destroy]
    permission :edit_charts, :charts => [:edit, :update]
    permission :edit_public_charts, :charts => [:edit, :update]
  end
  
  menu :project_menu, :charts, { :controller => 'charts', :action => 'index' }, :caption => :label_charts, :after => :issues, :param => :project_id

end
