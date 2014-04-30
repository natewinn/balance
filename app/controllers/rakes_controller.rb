class RakesController < ApplicationController
  before_action :set_rake, only: [:show, :edit, :update, :destroy]

  # GET /rakes
  # GET /rakes.json
  def index
    @rakes = Rake.all
  end

  # GET /rakes/1
  # GET /rakes/1.json
  def show
  end

  # GET /rakes/new
  def new
    @rake = Rake.new
  end

  # GET /rakes/1/edit
  def edit
  end

  # POST /rakes
  # POST /rakes.json
  def create
    @rake = Rake.new(rake_params)

    respond_to do |format|
      if @rake.save
        format.html { redirect_to @rake, notice: 'Rake was successfully created.' }
        format.json { render :show, status: :created, location: @rake }
      else
        format.html { render :new }
        format.json { render json: @rake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rakes/1
  # PATCH/PUT /rakes/1.json
  def update
    respond_to do |format|
      if @rake.update(rake_params)
        format.html { redirect_to @rake, notice: 'Rake was successfully updated.' }
        format.json { render :show, status: :ok, location: @rake }
      else
        format.html { render :edit }
        format.json { render json: @rake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rakes/1
  # DELETE /rakes/1.json
  def destroy
    @rake.destroy
    respond_to do |format|
      format.html { redirect_to rakes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rake
      @rake = Rake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rake_params
      params.require(:rake).permit(:db)
    end
end
