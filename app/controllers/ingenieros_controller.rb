class IngenierosController < ApplicationController
  before_action :set_ingeniero, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /ingenieros
  # GET /ingenieros.json
  def index
    @ingenieros = Ingeniero.all
  end

  # GET /ingenieros/1
  # GET /ingenieros/1.json
  def show
  end

  # GET /ingenieros/new
  def new
    @ingenieros = proyecto.ingenieros.all
  end

  # GET /ingenieros/1/edit
  def edit
  end

  # POST /ingenieros
  # POST /ingenieros.json
  def create
    @ingeniero = Ingeniero.new(ingeniero_params)
    @ingeniero.proyecto_id = @proyecto_id
    respond_to do |format|
      if @ingeniero.save
        format.html { redirect_to proyecto_ingenieros_path(@proyecto), notice: 'Ingeniero was successfully created.' }
        format.json { render :show, status: :created, location: @ingeniero }
      else
        format.html { render :new }
        format.json { render json: @ingeniero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingenieros/1
  # PATCH/PUT /ingenieros/1.json
  def update
    respond_to do |format|
      if @ingeniero.update(ingeniero_params)
        format.html { redirect_to proyecto_ingenieros_path(@proyecto), notice: 'Ingeniero was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingeniero }
      else
        format.html { render :edit }
        format.json { render json: @ingeniero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingenieros/1
  # DELETE /ingenieros/1.json
  def destroy
    @ingeniero.destroy
    respond_to do |format|
      format.html { redirect_to proyecto_ingenieros_path(@proyecto), notice: 'Ingeniero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingeniero
      @proyecto = Proyecto.find(params[:proyecto_id])
      @ingeniero = Ingeniero.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingeniero_params
      params.require(:ingeniero).permit(:nombrecompleto, :dependencia, :estudios, :proyectos_id)
    end
end
