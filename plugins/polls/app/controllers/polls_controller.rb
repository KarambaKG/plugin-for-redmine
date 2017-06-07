class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

  def vote
    poll = Poll.find(params[:id])
    poll.vote(params[:answer])
    if poll.save
      flash[:notice] = 'Vote saved.'
    end
    redirect_to :action => 'index'
  end
end