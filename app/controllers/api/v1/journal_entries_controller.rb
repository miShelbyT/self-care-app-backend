class Api::V1::JournalEntriesController < ApplicationController

def create
journal_entry = JournalEntry.create(journal_params)
render json: journal_entry
end

def index
  journal_entries = JournalEntry.all
  render json: journal_entries, :include => {:user_activity => :activity}
end

private

def journal_params
  params.permit(:date, :length_of_time, :comments)
end

end
