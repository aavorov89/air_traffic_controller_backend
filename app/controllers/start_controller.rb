# frozen_string_literal: true

class StartController < ApplicationController
  before_action :set_plane, only: %i[create]

  def create
    unless @plane.status == 'normal'
      render json: {}, status: :bad_request
      return
    end

    @plane.with_lock do
      @plane.status = :active
      @plane.save!
    end

    StartPlaneJob.perform_later(@plane.id)

    render json: {}, status: :created
  end

  private

  def set_plane
    @plane = Plane.find(params[:plane_id])
  end
end
