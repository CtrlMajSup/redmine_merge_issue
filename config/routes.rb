Rails.application.routes.draw do
  get 'merge_issues/select/:issue_a_id', to: 'merge_issues#select_issue', as: 'select_merge_issue'
  post 'merge_issues', to: 'merge_issues#merge'
end
