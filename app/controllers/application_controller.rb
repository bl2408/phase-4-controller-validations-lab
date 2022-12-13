class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :show_record_errors


    private 

    def show_record_errors exception
        render json: {errors: exception.record.errors }, status: :unprocessable_entity
    end

end
