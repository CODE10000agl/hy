class ProjectsController < ApplicationController

	before_action :set_project, only: [:show, :edit, :destroy, :update]

	def index
	 @projects = Project.all
	end

	def show
	 @project = Project.find(params[:id])
	end

	def new
	 @project = Project.new
	end

	def edit
	 @project =Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	def update
			@project =Project.find(params[:id])
			if @project.update(project_params)
				redirect_to projects_path
			else
				render 'edit'
			end
		end

	def create
	 @project = Project.new(project_params)
		if @project.save
			redirect_to projects_path
		else
			render 'new'
		end
	end

private

	def project_params
	 params[:project].permit(:title)
	end

	def set_project
	 @project =Project.find(params[:id])
	end

end
