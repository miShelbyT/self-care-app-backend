class Api::V1::JournalEntriesController < ApplicationController

def create
journal_entry = JournalEntry.create(journal_params)
render json: journal_entry
end

def index
  journal_entries = JournalEntry.all
  render json: journal_entries, :include => {:user_activity => :activity}
end

def update
  journal_entry = JournalEntry.find(params[:id])
  journal_entry.update(journal_params)
  render json: journal_entry
end

def destroy
  journal_entry = JournalEntry.find(params[:id])
  journal_entry.destroy
  render json: {}
end

private

def journal_params
  params.permit(:id, :date, :length_of_time, :comments, :user_id, :user_activity_id)
end

end
