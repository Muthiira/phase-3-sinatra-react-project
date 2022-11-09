class AddTitleAndLocationToDevs < ActiveRecord::Migration[6.1]
  def change
    add_column :devs, :title, :string
    add_column :devs, :location, :string

  end
end
