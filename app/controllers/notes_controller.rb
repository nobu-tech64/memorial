class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @notes = Note.all
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
    if @note.save
      redirect_to root_path
    end
  end

  def show
    @notes = Note.all
    @note = Note.find(params[:id])
  end

  def edit
    @notes = Note.all
    @note = Note.find(params[:id])
  end

  def update
    @notes = Note.all
    note = Note.find(params[:id])
    note.update(note_params)
    redirect_to root_path
  end

  private
  def note_params
    params.require(:note).permit(:title, :content, :start_time)
  end
end
