class MemberRoundsController < ApplicationController
  before_action :set_member_round, only: [:show, :edit, :update, :destroy]

  def index
    @member_rounds = MemberRound.all
  end

  def show
  end

  def new
    @member_round = MemberRound.new
  end

  def edit
  end

  def create
    @member_round = MemberRound.new(member_round_params)
    if @member_round.save
      redirect_to @member_round, notice: 'Member round was successfully created.'
    else
      render :new
    end
  end

  def update
    if @member_round.update(member_round_params)
      redirect_to @member_round, notice: 'Member round was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @member_round.destroy
    redirect_to member_rounds_url, notice: 'Member round was successfully destroyed.'
  end

  private
    def set_member_round
      @member_round = MemberRound.find(params[:id])
    end

    def member_round_params
      params.require(:member_round).permit(:member_id, :round_id, :total_score)
    end
end
