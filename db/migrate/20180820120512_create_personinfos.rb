class CreatePersoninfos < ActiveRecord::Migration[5.2]
  def change
    create_table :personinfos do |t|
      t.references :person, null: false
      t.string :firstname
      t.string :lastname
      t.string :sex
      t.string :age
      t.string :live
      t.string :country
      t.string :copy
      t.text :program
      t.text :place
      t.text :method
      t.text :message

      t.timestamps
    end
  end
end
