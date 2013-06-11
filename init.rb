require 'redmine'

require 'query_patch'
require 'pdf_patch'
require 'redmine_hide_estimated_hours/patches/issues_helper'

Redmine::Plugin.register :redmine_hide_estimated_hours do
  name 'Hide estimated hours'
  author 'Dominique Lederer (return1)'
  description 'This Redmine plugin reuses the "view_time_entries" permission to hide the estimated hours field'
  version '1.0.4'
  url 'http://return1.at/'
  author_url 'http://return1.at/'

  requires_redmine :version_or_higher => '2.3.0'

end
