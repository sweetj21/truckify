class GasStopsController < ApplicationController
  # GET /gas_stops
  # GET /gas_stops.json
  def index
    @gas_stops = GasStop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gas_stops }
    end
  end

  # GET /gas_stops/1
  # GET /gas_stops/1.json
  def show
    @gas_stop = GasStop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gas_stop }
    end
  end

  # GET /gas_stops/new
  # GET /gas_stops/new.json
  def new
    @gas_stop = GasStop.new(trip_report_id: params[:trip_report_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gas_stop }
    end
  end

  # GET /gas_stops/1/edit
  def edit
    @gas_stop = GasStop.find(params[:id])
  end

  # POST /gas_stops
  # POST /gas_stops.json
  def create
    @gas_stop = GasStop.new(params[:gas_stop])

    respond_to do |format|
      if @gas_stop.save
        format.html { redirect_to @gas_stop.trip_report, notice: 'Gas stop was successfully created.' }
        format.json { render json: @gas_stop, status: :created, location: @gas_stop }
      else
        format.html { render action: "new" }
        format.json { render json: @gas_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gas_stops/1
  # PUT /gas_stops/1.json
  def update
    @gas_stop = GasStop.find(params[:id])

    respond_to do |format|
      if @gas_stop.update_attributes(params[:gas_stop])
        format.html { redirect_to @gas_stop.trip_report, notice: 'Gas stop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gas_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_stops/1
  # DELETE /gas_stops/1.json
  def destroy
    @gas_stop = GasStop.find(params[:id])
    @gas_stop.destroy

    respond_to do |format|
      format.html { redirect_to gas_stops_url }
      format.json { head :no_content }
    end
  end
end
