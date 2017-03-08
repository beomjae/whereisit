class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  # GET /items
  # GET /items.json
  def index
    if params[:searchKeyword].present?
      @items = Item.where("category_id = ? and name LIKE ?", params[:categoryId] ,"%#{params[:searchKeyword]}%", ).uniq
    else
      @items = Item.where(category_id: params[:categoryId])
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end


end
