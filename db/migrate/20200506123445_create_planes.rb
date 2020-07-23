# frozen_string_literal: true

class CreatePlanes < ActiveRecord::Migration[6.0]
  def change
    create_table :planes do |t|
      t.string :name
      t.string :from
      t.string :to
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
