class StudentsController < ApplicationController
    def index
    @dojo = Dojo.find(params[:dojo_id])
    # @students = Student.where(@dojo)
    end
    def new
        @dojo = Dojo.find(params[:dojo_id])
    end
    def create
    Student.create(student_params)
    redirect_to '/'
    end
    def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    end
    def edit
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
    @student = Student.find(params[:id])
    end
    def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    @student.save
    redirect_to '/'
    end
    def destroy
        @student = Student.find(params[:id]).destroy
        redirect_to '/'
    end
    
    private
    def student_params
        params.require(:student).permit(:first_name,:last_name,:email,:dojo_id)
    end
    
end
