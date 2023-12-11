class RubyraildbsController < ApplicationController
  before_action :set_rubyraildb, only: %i[ show edit update destroy ]

  # GET /rubyraildbs or /rubyraildbs.json
  def index
    @rubyraildbs = Rubyraildb.all
  end

  # GET /rubyraildbs/1 or /rubyraildbs/1.json
  def show
  end

  # GET /rubyraildbs/new
  def new
    @rubyraildb = Rubyraildb.new
  end

  # GET /rubyraildbs/1/edit
  def edit
  end

  # POST /rubyraildbs or /rubyraildbs.json
  def create
    @rubyraildb = Rubyraildb.new(rubyraildb_params)

    respond_to do |format|
      if @rubyraildb.save
        format.html { redirect_to rubyraildb_url(@rubyraildb), notice: "Rubyraildb was successfully created." }
        format.json { render :show, status: :created, location: @rubyraildb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rubyraildb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubyraildbs/1 or /rubyraildbs/1.json
  def update
    respond_to do |format|
      if @rubyraildb.update(rubyraildb_params)
        format.html { redirect_to rubyraildb_url(@rubyraildb), notice: "Rubyraildb was successfully updated." }
        format.json { render :show, status: :ok, location: @rubyraildb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rubyraildb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubyraildbs/1 or /rubyraildbs/1.json
  def destroy
    @rubyraildb.destroy!

    respond_to do |format|
      format.html { redirect_to rubyraildbs_url, notice: "Rubyraildb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubyraildb
      @rubyraildb = Rubyraildb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rubyraildb_params
      params.require(:rubyraildb).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
