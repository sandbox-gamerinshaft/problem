class BlankAnswersController < ApplicationController
  before_action :set_blank_answer, only: [:show, :edit, :update, :destroy]

  # GET /blank_answers
  # GET /blank_answers.json
  def index
    @blank_answers = BlankAnswer.all
  end

  # GET /blank_answers/1
  # GET /blank_answers/1.json
  def show
  end

  # GET /blank_answers/new
  def new
    @blank_answer = BlankAnswer.new
  end

  # GET /blank_answers/1/edit
  def edit
  end

  # POST /blank_answers
  # POST /blank_answers.json
  def create
    @blank_answer = BlankAnswer.new(blank_answer_params)

    respond_to do |format|
      if @blank_answer.save
        format.html { redirect_to @blank_answer, notice: 'Blank answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blank_answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @blank_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blank_answers/1
  # PATCH/PUT /blank_answers/1.json
  def update
    respond_to do |format|
      if @blank_answer.update(blank_answer_params)
        format.html { redirect_to @blank_answer, notice: 'Blank answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blank_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blank_answers/1
  # DELETE /blank_answers/1.json
  def destroy
    @blank_answer.destroy
    respond_to do |format|
      format.html { redirect_to blank_answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blank_answer
      @blank_answer = BlankAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blank_answer_params
      params.require(:blank_answer).permit(:answer)
    end
end
