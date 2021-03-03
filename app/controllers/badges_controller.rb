require 'venice'
require "base64"

class BadgesController < ApplicationController
  def index
    @badges = Badge.all.order(id: :asc)
    render json: @badges, include: { user: { only: %w[username img_url] } }
  end

  def show
    @badge = Badge.find_by(id: params[:id])
    render json: @badge
  end

  def create 
    # encoded_string = Base64.encode64('yerrrrrrr')
    # receipt = Venice::Receipt.verify(encoded_string)    
  data = badge_params[:receipt]
  if receipt = Venice::Receipt.verify(data)
  # byebug
  # p receipt.to_h

  # You can refer an original JSON response via a Receipt instance.
    case receipt.original_json_response['status'].to_i
    when 0 then
      # byebug
      badge_params[:price] = badge_params[:price].to_f
      @badge = Badge.create(badge_params)
      render json: @badge, include: { user: { only: %w[username img_url] } }
    else
      byebug 
      puts 'NOT A VALID RECEIPT'
    end 
  end


  #WHAT SHOULD HAPPEN IF A USER GETS CHARGED BUT SOMETHING FAILS HERE??? SHOULD THE RECEIPT BE SAVED?

    # @badge = Badge.create(badge_params)
    # render json: @badge, include: { user: { only: %w[username img_url] } }
  end
  
  def update
    @badge = Badge.find_by(id: params[:id])
    if @badge.update(badge_params)
      render json: @badge
    else
      render json: @badge.errors, status: :unprocessable_entity
    end
  end
  
  def badge_params
    params.require(:badge).permit(:color, :business_id, :user_id, :price, :receipt)
  end
end


