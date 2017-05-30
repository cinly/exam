class ChoicesController < ApplicationController
    before_action :authenticate_user!, only: [:create]

    def index
      @exams = Exam.all
    end

    def show
      @choice= Choice.find(params[:id])
      @exams = Exam.all
    end

    def new
      @choice = Choice.new
    end

    def edit
      @exam = Exam.find(params[:id])
      @choice = Choice.find_by(:exam_id => params[:id])
      # if @choice.name = @exam.name
      # @exams = Exam.all
    end

    def create
      @choice = Choice.new(choice_params)
      @choice.exam_id = params[:exam_id]
      # @choice.user = is_admin


      if @choice.save
        redirect_to choice_path(@choice)
      else
        render 'exams/option'
      end

    end

    def update
      @choice = Choice.find(params[:id])

      # if choice.is_aa1en == choice.exam.is_a1en
      #   score += 1.25
      # else
      # end
      #
      # if choice.is_bb1en == choice.exam.is_b1en
      #   score += 1.25
      # else
      # end
      #
      #
      # @choice.score = score

      # if choice.is_aa1en == choice.exam.is_a1en && choice.is_bb1en == choice.exam.is_b1en && choice.is_cc1en == choice.exam.is_c1en && choice.is_dd1en == choice.exam.is_d1en
      #   score += 5
      # else
      # end


      if @choice.update(choice_params)
        redirect_to choices_path
      else
        render :edit
      end
    end

    def destroy
      @choice = Choice.find(params[:id])
      @choice.destroy
      flash[:alert] = "exam Deleted"
      redirect_to choices_path
    end




  def aa
     @choice = Choice.find(params[:id])
     @choice.aa!
     redirect_to :back
  end
  def aa1
     @choice = Choice.find(params[:id])
     @choice.aa1!
     redirect_to :back
  end

  def bb
     @choice = Choice.find(params[:id])
     @choice.bb!
     redirect_to :back
  end
  def bb1
     @choice = Choice.find(params[:id])
     @choice.bb1!
     redirect_to :back
  end

  def cc
     @choice = Choice.find(params[:id])
     @choice.cc!
     redirect_to :back
  end
  def cc1
     @choice = Choice.find(params[:id])
     @choice.cc1!
     redirect_to :back
  end

  def dd
     @choice = Choice.find(params[:id])
     @choice.dd!
     redirect_to :back
  end
  def dd1
     @choice = Choice.find(params[:id])
     @choice.dd1!
     redirect_to :back
  end

  def ee
     @choice = Choice.find(params[:id])
     @choice.ee!
     redirect_to :back
  end
  def ee1
     @choice = Choice.find(params[:id])
     @choice.ee1!
     redirect_to :back
  end

  def ff
     @choice = Choice.find(params[:id])
     @choice.ff!
     redirect_to :back
  end
  def ff1
     @choice = Choice.find(params[:id])
     @choice.ff1!
     redirect_to :back
  end

  def choice_params
    params.require(:choice).permit(:is_user,:name,:is_aa1en,:is_bb1en,:is_cc1en,:is_dd1en,:is_ee1en,:is_ff1en,:exam_id)
  end


end
