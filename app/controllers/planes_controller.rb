# frozen_string_literal: true

class PlanesController < ApplicationController
  before_action :set_plane, only: %i[show]

  # GET /planes
  def index
    @planes = Plane.all.limit(1000).order(:id)

    render json: @planes
  end

  # GET /planes/1
  def show
    render json: @plane
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plane
    @plane = Plane.find(params[:id])
  end
end
