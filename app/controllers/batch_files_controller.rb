class BatchFilesController < ApplicationController
  before_action :set_batch_file, only: %i[ show edit update destroy ]

  # GET /batch_files or /batch_files.json
  def index
    @batch_files = BatchFile.all
  end

  # GET /batch_files/1 or /batch_files/1.json
  def show
  end

  # GET /batch_files/new
  def new
    @batch_file = BatchFile.new
  end

  # GET /batch_files/1/edit
  def edit
  end

  # POST /batch_files or /batch_files.json
  def create
    @batch_file = BatchFile.new(batch_file_params)

    respond_to do |format|
      if @batch_file.save
        format.html { redirect_to @batch_file, notice: "Batch file was successfully created." }
        format.json { render :show, status: :created, location: @batch_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @batch_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batch_files/1 or /batch_files/1.json
  def update
    respond_to do |format|
      if @batch_file.update(batch_file_params)
        format.html { redirect_to @batch_file, notice: "Batch file was successfully updated." }
        format.json { render :show, status: :ok, location: @batch_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @batch_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batch_files/1 or /batch_files/1.json
  def destroy
    @batch_file.destroy
    respond_to do |format|
      format.html { redirect_to batch_files_url, notice: "Batch file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch_file
      @batch_file = BatchFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batch_file_params
      params.require(:batch_file).permit(:name, :file)
    end
end
