class BetsController < ApplicationController
  before_action :new_bet, only: [:create]
  before_action :set_bet, only: [:show, :edit, :update, :destroy]

  def index
    @bets = Bet.all.order('topic_id ASC, user_id ASC')
  end

  def new
    @bet = current_user.bets.new
    @topic = Topic.find(params[:topic_id])
  end

  def create
    if @bet.save
      redirect_to bet_path(@bet)
      flash[:notice] = 'Bet created successfully.'
    else
      render :new
      flash.now[:danger] = 'Bet could not be created.'
    end
  end

  def show
  end

  def edit
    @topic = Topic.find(@bet.topic.id)
  end

  def update
    if @bet.update_attributes(bet_params)
      redirect_to bet_path(@bet)
      flash[:notice] = 'Bet updated successfully.'
    else
      render :edit
      flash.now[:danger] = 'Bet could not be updated.'
    end
  end

  def destroy
    @bet.destroy
    redirect_to root_path
  end

  private

  def bet_params
    params.require(:bet).permit(:value, :topic_id, :user_id)
  end

  def new_bet
    @bet = current_user.bets.new(bet_params)
  end

  def set_bet
    @bet = Bet.find(params[:id])
  end
end
