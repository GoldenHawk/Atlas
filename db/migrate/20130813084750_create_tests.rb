class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :project
      t.string :test_purpose
      t.string :status

      t.timestamps
    end
  end
end
