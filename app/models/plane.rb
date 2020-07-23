# frozen_string_literal: true

class Plane < ApplicationRecord
  enum status: { normal: 0, active: 1, completed: 2 }
end
