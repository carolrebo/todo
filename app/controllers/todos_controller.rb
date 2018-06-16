class TodosController < ApplicationController
	def index
 		@todo = Todo.all
 	end

 	def new
 		@todo = Todo.new
 	end

 	def create
		@todo = Todo.new(params[:id])
		@todo.save 
		redirect_to todos_path
	end

	def show
		@todo= Todo.find(params[:id])
	end

	def update
		@todos = Todo.find(params[:id])
		@todo.update(todo_params)
		redirect_to todos_path
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		redirect_to todos_path
	end

	private

	def todo_params
		params.require(:todo).permit(:description, :completed)
	end


end
