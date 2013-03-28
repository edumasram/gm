class CervejariaController < ApplicationController
  # GET /cervejaria
  # GET /cervejaria.json
  def index
    @cervejaria = Cervejarium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cervejaria }
    end
  end

  # GET /cervejaria/1
  # GET /cervejaria/1.json
  def show
    @cervejarium = Cervejarium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cervejarium }
    end
  end

  # GET /cervejaria/new
  # GET /cervejaria/new.json
  def new
    @cervejarium = Cervejarium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cervejarium }
    end
  end

  # GET /cervejaria/1/edit
  def edit
    @cervejarium = Cervejarium.find(params[:id])
  end

  # POST /cervejaria
  # POST /cervejaria.json
  def create
    @cervejarium = Cervejarium.new(params[:cervejarium])

    respond_to do |format|
      if @cervejarium.save
        format.html { redirect_to @cervejarium, notice: 'Cervejarium was successfully created.' }
        format.json { render json: @cervejarium, status: :created, location: @cervejarium }
      else
        format.html { render action: "new" }
        format.json { render json: @cervejarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cervejaria/1
  # PUT /cervejaria/1.json
  def update
    @cervejarium = Cervejarium.find(params[:id])

    respond_to do |format|
      if @cervejarium.update_attributes(params[:cervejarium])
        format.html { redirect_to @cervejarium, notice: 'Cervejarium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cervejarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cervejaria/1
  # DELETE /cervejaria/1.json
  def destroy
    @cervejarium = Cervejarium.find(params[:id])
    @cervejarium.destroy

    respond_to do |format|
      format.html { redirect_to cervejaria_url }
      format.json { head :no_content }
    end
  end
end
