class TripReportsController < ApplicationController
  # GET /trip_reports
  # GET /trip_reports.json
  def index
    @trip_reports = TripReport.order("trip_start_date")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trip_reports }
    end
  end

  # GET /trip_reports/1
  # GET /trip_reports/1.json
  def show
    @trip_report = TripReport.find(params[:id])
    @crossings = @trip_report.crossings

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip_report }
    end
  end

  # GET /trip_reports/new
  # GET /trip_reports/new.json
  def new
    @trip_report = TripReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip_report }
    end
  end

  # GET /trip_reports/1/edit
  def edit
    @trip_report = TripReport.find(params[:id])
  end

  # POST /trip_reports
  # POST /trip_reports.json
  def create
    @trip_report = TripReport.new(params[:trip_report])

    respond_to do |format|
      if @trip_report.save
        format.html { redirect_to @trip_report, notice: 'Trip report was successfully created.' }
        format.json { render json: @trip_report, status: :created, location: @trip_report }
      else
        format.html { render action: "new" }
        format.json { render json: @trip_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trip_reports/1
  # PUT /trip_reports/1.json
  def update
    @trip_report = TripReport.find(params[:id])

    respond_to do |format|
      if @trip_report.update_attributes(params[:trip_report])
        format.html { redirect_to @trip_report, notice: 'Trip report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_reports/1
  # DELETE /trip_reports/1.json
  def destroy
    @trip_report = TripReport.find(params[:id])
    @trip_report.destroy

    respond_to do |format|
      format.html { redirect_to trip_reports_url }
      format.json { head :no_content }
    end
  end
end
