class CreateUserinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :userinfos do |t|
      t.references :user, null: false
      t.string :nickname
      t.string :sex
      t.string :age
      t.string :live
      t.string :country

      t.timestamps
    end
  end
end
