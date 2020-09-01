class ProgressNotesController < ApplicationController
  before_action :set_progress_note, only: [:show, :edit, :update, :destroy]

  def index
    @progress_notes = ProgressNote.all
  end

  def show
  end

  def new
    @progress_note = ProgressNote.new
  end

  def edit
  end

  def create
    @progress_note = ProgressNote.new(progress_note_params)

    respond_to do |format|
      if @progress_note.save
        format.html { redirect_to @progress_note, notice: 'Progress note was successfully created.' }
        format.json { render :show, status: :created, location: @progress_note }
      else
        format.html { render :new }
        format.json { render json: @progress_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @progress_note.update(progress_note_params)
        format.html { redirect_to @progress_note, notice: 'Progress note was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_note }
      else
        format.html { render :edit }
        format.json { render json: @progress_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @progress_note.destroy
    respond_to do |format|
      format.html { redirect_to progress_notes_url, notice: 'Progress note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_progress_note
      @progress_note = ProgressNote.find(params[:id])
    end

    def progress_note_params
      params.require(:progress_note).permit(:content)
    end
end
