class ListsController < ApplicationController
	before_action :authenticate_company!

	def new
		@list = List.new
	end

	def create
	    @list = List.new(post_params)
	    @list.company = current_company.id
	    if @list.save
	      redirect_to "/"
	    else
	      render 'new'
	    end
  	end

	def destroy
		@list = List.find(params[:id])

	    @list.destroy
	    redirect_to "/"
	end

	def edit
		@list = List.find(params[:id]) 
	end

  	def update
    	@list = List.find(params[:id])

    	if @list.update(post_params)
      		redirect_to "/"
    	else
      		render 'edit'
    	end
  	end

  	private

	def post_params
		params.require(:list).permit(:position, :location, :company, :url, :date)
	end
end
