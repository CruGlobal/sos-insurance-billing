class CreateProjectContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :project_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
