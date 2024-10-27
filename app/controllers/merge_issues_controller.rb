class MergeIssuesController < ApplicationController
    before_action :find_issues, only: [:merge]
    before_action :authorize
  
    def merge
      if @issue_a && @issue_b
        MergeService.new(@issue_a, @issue_b).merge!
        flash[:notice] = "Issue ##{@issue_b.id} a été fusionnée dans l'issue ##{@issue_a.id}."
      else
        flash[:error] = "Issues non trouvées pour la fusion."
      end
      redirect_to issue_path(@issue_a)
    end
  
    private
  
    def find_issues
      @issue_a = Issue.find_by(id: params[:issue_a_id])
      @issue_b = Issue.find_by(id: params[:issue_b_id])
    end
  end
  