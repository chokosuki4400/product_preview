class CreatePeopleMiddleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :people_middle_categories do |t|
      t.references :person, foreign_key: true
      t.references :middle_category, foreign_key: true

      t.timestamps
    end
  end
end
