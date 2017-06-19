class EpisodesController < ApplicationController
  before_action :set_episode, only:[:show]
  before_action :authorized

  def index
    @episodes = Episode.all
  end

  def show

  end

  private

  def set_episode
    @episode = Episode.find_by(id: params[:id])
  end
end
