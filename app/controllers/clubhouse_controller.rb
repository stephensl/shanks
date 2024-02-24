class ClubhouseController < ApplicationController
  before_action :authenticate_member!
  def index
    @upcoming_rounds = current_member.rounds.where('date > ?', Time.now).order(date: :asc)
    @past_rounds = current_member.rounds.where('date <= ?', Time.now).order(date: :desc)
  end
end
