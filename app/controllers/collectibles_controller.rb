class CollectiblesController < ApplicationController
  # GET /collectibles
  # GET /collectibles.json
  def index
    @collectibles = Collectible.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collectibles }
    end
  end

  # GET /collectibles/1
  # GET /collectibles/1.json
  def show
    @collectible = Collectible.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collectible }
    end
  end

  # GET /collectibles/new
  # GET /collectibles/new.json
  def new
    @collectible = Collectible.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collectible }
    end
  end

  # GET /collectibles/1/edit
  def edit
    @collectible = Collectible.find(params[:id])
  end

  # POST /collectibles
  # POST /collectibles.json
  def create
    @collectible = Collectible.new(params[:collectible])

    respond_to do |format|
      if @collectible.save
        format.html { redirect_to @collectible, notice: 'Collectible was successfully created.' }
        format.json { render json: @collectible, status: :created, location: @collectible }
      else
        format.html { render action: "new" }
        format.json { render json: @collectible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collectibles/1
  # PUT /collectibles/1.json
  def update
    @collectible = Collectible.find(params[:id])

    respond_to do |format|
      if @collectible.update_attributes(params[:collectible])
        format.html { redirect_to @collectible, notice: 'Collectible was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collectible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collectibles/1
  # DELETE /collectibles/1.json
  def destroy
    @collectible = Collectible.find(params[:id])
    @collectible.destroy

    respond_to do |format|
      format.html { redirect_to collectibles_url }
      format.json { head :no_content }
    end
  end
end
