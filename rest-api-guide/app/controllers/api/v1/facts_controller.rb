class Api::V1::FactsController < ApplicationController
  before_action :find_fact, only: [:update, :show, :destroy]

  def index
    @facts = Fact.all
    render json: @facts
  end

  def show
    render json: @fact
  end

  def create
    @fact = Fact.new(fact_params)
    if @fact.save
      render json: @fact
    else
      render error: { error: "unable to create fact" }, status: 400
    end
  end

  def update
    if @fact
      @fact.update(fact_params)
      render json: { message: "fact updated successfully" }, status: 200
    else
      render error: { error: "unable to update fact" }, status: 400
    end
  end

  def destroy
    if @fact
      @fact.destroy
      render json: { message: "fact deleted successfully" }, status: 200
    else
      render error: { error: "unable to delete fact" }, status: 400
    end
  end

  private

  def fact_params
    params.require(:fact).permit(:fact_name, :likes, :user_id)
  end

  def find_fact
    @fact = Fact.find(params[:id])
  end
end
