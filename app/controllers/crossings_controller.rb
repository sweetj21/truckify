class CrossingsController < ApplicationController
  # GET /crossings
  # GET /crossings.json
  def index
    @crossings = Crossing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crossings }
    end
  end

  # GET /crossings/1
  # GET /crossings/1.json
  def show
    @crossing = Crossing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crossing }
    end
  end

  # GET /crossings/new
  # GET /crossings/new.json
  def new
    @crossing = Crossing.new(trip_report_id: params[:trip_report_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crossing }
    end
  end

  # GET /crossings/1/edit
  def edit
    @crossing = Crossing.find(params[:id])
  end

  # POST /crossings
  # POST /crossings.json
  def create
    @crossing = Crossing.new(params[:crossing])

    respond_to do |format|
      if @crossing.save
        format.html { redirect_to @crossing.trip_report, notice: 'Crossing was successfully created.' }
        format.json { render json: @crossing, status: :created, location: @crossing }
      else
        format.html { render action: "new" }
        format.json { render json: @crossing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crossings/1
  # PUT /crossings/1.json
  def update
    @crossing = Crossing.find(params[:id])

    respond_to do |format|
      if @crossing.update_attributes(params[:crossing])
        format.html { redirect_to @crossing, notice: 'Crossing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crossing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crossings/1
  # DELETE /crossings/1.json
  def destroy
    @crossing = Crossing.find(params[:id])
    @crossing.destroy

    respond_to do |format|
      format.html { redirect_to @crossing.trip_report }
      format.json { head :no_content }
    end
  end
end
