class MergeIssuesController < ApplicationController
  # before_action :authorize

  def select_issue
    @issue_a = Issue.find(params[:issue_a_id])
    @issues = Issue.where(project_id: @issue_a.project_id).where.not(id: @issue_a.id)
  end

  def merge
    @issue_a = Issue.find(params[:issue_a_id])
    
    if params[:issue_b_id]
      @issue_b = Issue.find(params[:issue_b_id])

      if @issue_b
        MergeService.new(@issue_a, @issue_b).merge!
        flash[:notice] = t('label_merge_success', obj: [@issue_a.id, @issue_b.id].join(', '))
      else
        flash[:alert] = t('error_label_not_found')
      end
    else
      flash[:alert] = t('error_missing_issue_b_id')
    end

    redirect_to issue_path(@issue_a)
  end

end