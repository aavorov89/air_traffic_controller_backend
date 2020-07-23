# frozen_string_literal: true

class StartPlaneJob < ApplicationJob
  queue_as :default

  def perform(plane_id)
    sleep(10)

    Plane.transaction do
      plane = Plane.lock.find(plane_id)

      plane.status = :completed
      plane.save!
    end
  end
end
