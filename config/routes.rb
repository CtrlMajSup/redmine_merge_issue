Rails.application.routes.draw do
    post 'merge_issues/:issue_a_id/:issue_b_id', to: 'merge_issues#merge', as: 'merge_issues'
  end
  