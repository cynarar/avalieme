class CategoriesController < ApplicationController
  
  def show
    @category = Category.find_by_slug(params[:id])
    @subcategories = @category.subcategories
    @products = @category.products
    respond_to do |format|
       format.html # index.html.haml
       format.xml  { render xml: @categories}
       format.json { render json: @categories}
    end
  end

  def associate
        @user = current_member
        if request.post?
            if @user.update_attributes(params[:user])
                flash[:notice] = "Área de atuação selecionada"
                render :action => :associate_a_subcategory
            end
            redirect_to :back
        end
    end

end