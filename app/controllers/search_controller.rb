class SearchController < ApplicationController
  def index
    @items = Item.where "name LIKE ?", "%#{params[:search_query]}"
    render template: 'items/index'
  end
end
