module RedmineMergeIssues
    module Hooks
        class ViewIssuesShowDetailsBottom < Redmine::Hook::ViewListener
        include Redmine::I18n

        render_on(:view_issues_show_details_bottom, :partial => 'merge_issues/merge_button', :layout => false)
        end
    end
end