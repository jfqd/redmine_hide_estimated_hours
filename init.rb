require 'redmine'

Redmine::Plugin.register :redmine_hide_estimated_hours do
  name 'Hide estimated hours'
  author 'Dominique Lederer (return1)'
  description 'This Redmine plugin reuses the "view_time_entries" permission to hide the estimated hours field'
  version '1.0.2'
  url 'http://return1.at/'
  author_url 'http://return1.at/'

  requires_redmine :version_or_higher => '2.2.0'

  Rails.configuration.to_prepare do
    require_dependency 'query'
    unless Query.included_modules.include? RedmineHideEstimatedHours::Patches::QueryPatch
      Query.send(:include, RedmineHideEstimatedHours::Patches::QueryPatch)
    end
  end

end

require 'redmine_hide_estimated_hours/patches/issues_helper'
