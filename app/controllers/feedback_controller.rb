class FeedbackController < ApplicationController
  def new
    @reciever = group.users.find(params[:reciever_id])
    @response = Response.new(reviever: @reciever, giver: current_user, group: group)
    @questions = group.project.questions
  end

  def create
    params[:scores].each do |score|
    end
    redirect_to dashboard_path
  end

  private
    def group
      @group || current_user.groups.find(params[:group_id])
    end
end
