class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]

  def index
    @meetings = Meeting.where(date: Date.current)
    @unusable_cells = @meetings.pluck(:part_time_id, :partner_id)
  end

  def show
  end

  def new
    @meeting = Meeting.new
  end

  def edit
  end

  def create
    # params.require(:meeting).permit(:date, :partner_id, :part_time_id)
    @current_user = Pioneer.first
    @meeting = Meeting.new(meeting_params)


    if @meeting.save
      redirect_to meeting_url(@meeting), notice: "Meeting was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @meeting.update(meeting_params)
      redirect_to meeting_url(@meeting), notice: "Meeting was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @meeting.destroy
    redirect_to meetings_url, notice: "Meeting was successfully destroyed."
  end

  private
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    def meeting_params
      params.require(:meeting).permit(:date, :partner_id, :part_time_id)
    end
end
