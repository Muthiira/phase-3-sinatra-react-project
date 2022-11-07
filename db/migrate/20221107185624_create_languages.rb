class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :language
      t.integer :experience
      t.integer :dev_id
      t.integer :project_id
    end
  end
end
