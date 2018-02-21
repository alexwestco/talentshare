class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def new
		@company = Company.new

	end

	def create
	    @company = Company.new(post_params)

	    if @company.save
	      redirect_to "/"
	    else
	      render 'new'
	    end
  	end

	def destroy
		@company = Company.find(params[:id])

	    @company.destroy
	    redirect_to "/"
	end

	def edit
		@company = Company.find(params[:id]) 
	end

  	def update
    	@company = Company.find(params[:id])

    	if @company.update(post_params)
      		redirect_to "/"
    	else
      		render 'edit'
    	end
  	end

  	def show
    	@company = Company.find(params[:id])
  	end

  	private

	def post_params
		params.require(:company).permit(:name, :description, :url, :location, :image)
	end

end
