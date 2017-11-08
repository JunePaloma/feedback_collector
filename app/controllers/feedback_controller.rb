class FeedbackController < ApplicationController
  def new
    @receiver = group.users.find(params[:receiver_id])
    @response = Feedback.new(receiver: @receiver, giver: current_user, group: group)
    @questions = group.project.questions
  end

  def create
    params[:scores].each do |score|
    end
    redirect_to group_path(group)
  end

  private
   attr_reader :group
    def group
      @group ||= current_user.groups.find(params[:group_id])
    end
end
