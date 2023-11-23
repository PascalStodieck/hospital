class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :university
      t.string :degree_name
      t.integer :score
      t.references  :doctor, foreign_key: true

      t.timestamps
    end
  end
end
