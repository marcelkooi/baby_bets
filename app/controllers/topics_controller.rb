class TopicsController < ApplicationController
  before_action :new_topic, only: [:create]
  before_action :set_topic, only: [:edit, :update, :show, :destroy]

  def new
    @topic = Topic.new
  end

  def index
    @topics = Topic.all
  end

  def show

  end

  def create
    if @topic.save
      redirect_to topic_path(@topic)
      flash[:success] = 'Topic saved successfully.'
    else
      render :new
      flash.now[:danger] = 'Topic could not be saved.'
    end
  end

  def edit

  end

  def update
    if @topic.update_attributes(topic_params)
      redirect_to topic_path(@topic)
      flash[:success] = 'Topic saved successfully.'
    else
      render :new
      flash.now[:danger] = 'Topic could not be saved.'
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path
  end

  private

  def new_topic
    @topic = Topic.new(topic_params)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:name, :multiplier, :actual_value, :type, :unit)
  end
end
