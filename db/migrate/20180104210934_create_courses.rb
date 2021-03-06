class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :tagline
      t.string :category
      t.string :service
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
