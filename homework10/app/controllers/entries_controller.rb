class EntriesController < ApplicationController

	def create
		@trip = Trip.find(params[:trip_id])
		@entry = @trip.entries.create(entry_params)
		redirect_to trip_path(@trip)
	end

	def edit
		@trip = Trip.find(params[:trip_id])
		@entry = @trip.entries.find(params[:id])
	end

	def update
		@trip = Trip.find(params[:trip_id])
		@entry = Entry.find(params[:id])

		if @entry.update(entry_params)
			redirect_to @trip
		else
			render 'edit'
		end
	end

	def destroy
    	@trip = Trip.find(params[:trip_id])
    	@entry = @trip.entries.find(params[:id])
    	@entry.destroy
    	redirect_to trip_path(@trip)
  	end

end

private
    def entry_params
      params.require(:entry).permit(:date, :location, :memory)
    end

