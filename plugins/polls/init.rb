Redmine::Plugin.register :polls do
  name 'Polls plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  menu :application_menu, :polls, { :controller => 'polls', :action => 'index' }, :caption => 'Polls'

  require_dependency 'polls_hook_listener'

  settings :default => {'empty' => true}, :partial => 'settings/poll_settings'
end
