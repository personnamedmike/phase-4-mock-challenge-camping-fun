class SignupsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
        ActiveRecord::RecordInvalid
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

    def render_record_invalid(invalid)
        # byebug
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
