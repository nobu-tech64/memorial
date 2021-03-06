class NotesController < ApplicationController
  def index
    @notes = Note.all
    @user = User.all
  end

  def new
    @notes = Note.all
    @note = Note.new
    @user = User.all
  end

  def create
    @note = Note.create(note_params)
    if @note.save
      redirect_to root_path
    end
  end

  def show
    @notes = Note.all
    @user = User.all
    # @note = Note.find(params[:id])
  end

  def edit
    @notes = Note.all
    @note = Note.find(params[:id])
    @user = User.all
  end

  def update
    @notes = Note.all
    note = Note.find(params[:id])
    note.update(note_params)
    redirect_to root_path
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    if @note.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def note_params
    params.require(:note).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end
end
