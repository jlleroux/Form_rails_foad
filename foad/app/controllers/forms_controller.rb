class FormsController < ApplicationController
	def index
		@forms = Form.all
	end
	
	def create
	@form = Form.new(form_params)
 
	@form.save
	redirect_to forms_path
	end
 
private
  def form_params
    params.require(:form).permit(:title, :comment)
  end
end
