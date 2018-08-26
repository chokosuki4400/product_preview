class AddImageToPersoninfo < ActiveRecord::Migration[5.2]
  def change
    add_column :personinfos, :image, :string
  end
end
