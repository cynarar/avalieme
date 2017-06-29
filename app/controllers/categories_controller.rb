class CategoriesController < ApplicationController
  
  def show
    @category = Category.find_by_slug(params[:id])
    @subcategories = @category.subcategories
    respond_to do |format|
       format.html # index.html.haml
       format.xml  { render xml: @categories}
       format.json { render json: @categories}
    end
  end

end