class ProductsController < ApplicationController
  def index
  end

  def datatable_ajax
  	render json: ProductsDatatable.new(view_context) 
  end
end
