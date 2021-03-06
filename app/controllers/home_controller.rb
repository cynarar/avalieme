class HomeController < ApplicationController
  
  def index
    @categories = Category.includes(:subcategories)
    respond_to do |format|
       format.html # index.html.haml
       format.xml  { render xml: @categories}
       format.json { render json: @categories}
    end
  end

  def about
  end
end
