class MonthliesController < ApplicationController
  before_filter :authenticate_user!

  # GET /monthlies
  # GET /monthlies.json
  def index
    @monthlies = Monthly.where(user: current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monthlies }
    end
  end

  # GET /monthlies/1
  # GET /monthlies/1.json
  def show
    @monthly = Monthly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monthly }
    end
  end

  # GET /monthlies/new
  # GET /monthlies/new.json
  def new
    @monthly = Monthly.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monthly }
    end
  end

  # GET /monthlies/1/edit
  def edit
    @monthly = Monthly.find(params[:id])
  end

  # POST /monthlies
  # POST /monthlies.json
  def create
    @monthly = Monthly.new(params[:monthly])

    respond_to do |format|
      if @monthly.save
        format.html { redirect_to @monthly, notice: 'Monthly was successfully created.' }
        format.json { render json: @monthly, status: :created, location: @monthly }
      else
        format.html { render action: "new" }
        format.json { render json: @monthly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monthlies/1
  # PUT /monthlies/1.json
  def update
    @monthly = Monthly.find(params[:id])

    respond_to do |format|
      if @monthly.update_attributes(params[:monthly])
        format.html { redirect_to @monthly, notice: 'Monthly was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monthly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthlies/1
  # DELETE /monthlies/1.json
  def destroy
    @monthly = Monthly.find(params[:id])
    @monthly.destroy

    respond_to do |format|
      format.html { redirect_to monthlies_url }
      format.json { head :no_content }
    end
  end
end
