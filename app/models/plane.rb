class Plane < ApplicationRecord
  enum status: %i[normal active completed]
end
