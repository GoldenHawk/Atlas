class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :name
      t.string :project
      t.string :issue

      t.timestamps
    end
  end
end
