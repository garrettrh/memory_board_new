class MemoriesController < ApplicationController

	def index
		@memories = Memory.all
	end

	def new
		@memory = Memory.new
	end

	def create
		@memory = Memory.new(memory_params)
		if @memory.save
			redirect_to memory_path(@memory)
		else
			render :new
		end
	end

	def show
		@memory = Memory.find(params[:id])
	end

	def edit
		@memory = Memory.find(params[:id])
	end

	def update
		@memory = Memory.find(params[:id])
		if @memory.update_attributes(memory_params)
			redirect_to memory_path(@memory)
		else
			render :edit
		end
	end

	def destroy
		@memory = Memory.find(params[:id])
		if @memory.destroy
			redirect_to memories_path
		else
			redirect_to memory_path(@memory)
		end
	end

	private

	def memory_params
		params.require(:memory).permit(:title, :body, :user)
	end

end
