class AppRecordsController < ApplicationController
  before_action :set_app_record, only: [:show, :update, :destroy]

  # GET /app_records
  def index
    @app_records = AppRecord.all

    render json: @app_records
  end

  # GET /app_records/1
  def show
    render json: @app_record
  end

  # POST /app_records
  def create
    @app_record = AppRecord.new(app_record_params)

    if @app_record.save
      render json: @app_record, status: :created, location: @app_record
    else
      render json: @app_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_records/1
  def update
    if @app_record.update(app_record_params)
      render json: @app_record
    else
      render json: @app_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app_records/1
  def destroy
    @app_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_record
      @app_record = AppRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_record_params
      params.fetch(:app_record, {}).permit(
        :company_name, 
        :position, 
        :description, 
        :salary, 
        :city, 
        :interest_level,
        :app_link,
        :notes,
        :user_id
      )
    end
end

# t.string :company_name
# t.string :position
# t.string :description
# t.integer :salary
# t.string :city 
# t.string :interest_level
# t.string :app_link
# t.string :notes
# t.date :date_applied
# t.date :last_contact

# t.integer :user_id
