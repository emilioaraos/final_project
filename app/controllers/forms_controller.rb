class FormsController < ApplicationController


	def destroy
		user = User.find(params[:user_id])
		form = user.forms.find(params[:id])
		form.destroy

		redirect_to user_forms_path(user)
	end

	def update
		@user= User.find(params[:user_id])
		@form = @user.forms.find(params[:id])
		
		if @form.update_attributes(form_params)
			flash[:notice] = 'Form updated successfully'
			redirect_to action: 'index'
		else
			flash.now[:errors] = @form.errors.full_messages
			render 'edit'
		end
	end

	def edit
		@user = User.find(params[:user_id])
		@form = @user.forms.find(params[:id])
	end

	def index
	  	@user = User.find_by(id: params[:user_id])

	  	if @user.nil?
	  		render 'share/not_found'
	  	else
	  		@forms = @user.forms

	  		render 'index'
	  	end
	end

	def new
		@user= User.find(params[:user_id])
		@form = @user.forms.new
	end

	def create
		falseAnswer = false
		params[:form].each do | key, value |
			if value == "false"
				falseAnswer = true
			else value == "true"
				falseAnswer == false
			end
		end
		@user = User.find(params[:user_id])
		@form = @user.forms.new(form_params)

		if @form.save
			flash[:notice] = 'Form created successfully'
			if falseAnswer==true 
				redirect_to action: 'contact', controller: 'site', user_id: @user.id
			else falseAnswer== false
				redirect_to action: 'perse', controller: 'site', user_id: @user.id
			end

		else
			flash[:alert] = 'There was an error'
			render 'new'
		end
	end

	def naturalization
		@user= User.find_by(id: params[:user_id])
		@form = @user.forms.new
	end


	def new_create
		falseAnswer = false
		params[:form].each do | key, value |
			if value == "false"
				falseAnswer = true
			else value == "true"
				falseAnswer == false
			end
		end
		@user = User.find(params[:user_id])
		@form = @user.forms.new(form_params)

		if @form.save
			flash[:notice] = 'Form created successfully'
			if falseAnswer==true 
				redirect_to action: 'contact', controller: 'site', user_id: @user.id
			else falseAnswer== false
				redirect_to action: 'support', controller: 'site', user_id: @user.id
			end

		else
			flash[:alert] = 'There was an error'
			render 'new'
		end
	end

	private

	def form_params
		params.require(:form).permit(:answer, :answerb, :answerc, :answerd)
	end


end
