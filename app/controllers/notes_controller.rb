class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @notes = Note.all
    @note = Note.new
  end
end
