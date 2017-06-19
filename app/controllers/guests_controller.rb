class GuestsController < ApplicationController
  before_action :set_guest, only: [:show]
  before_action :authorized

  def index
    @guests = Guest.all
  end

  def show

  end

  private

  def set_guest
    @guest = Guest.find_by(id: params[:id])
  end
end
