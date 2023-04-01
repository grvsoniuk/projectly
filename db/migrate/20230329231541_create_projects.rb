class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :status
      t.text :desc

      t.timestamps
    end
  end
end
