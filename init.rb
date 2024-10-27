require 'redmine'

Redmine::Plugin.register :redmine_merge_issues do
  name 'Redmine Merge Issues Plugin'
  author 'https://github.com/CtrlMajSup'
  description 'Redmine Merge Issues plugin allows users to merge two issues by transferring all notes, attachments, descriptions, and custom fields from one issue to another while preserving timestamps and logging a comprehensive merge notification.'
  version '0.1.0'
  requires_redmine :version_or_higher => '5.0.0'

  permission :merge_issues, { merge_issues: [:merge, :select_issue] }, require: :member 
end
