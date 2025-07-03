class CreateParticipants < ActiveRecord::Migration[8.0]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.integer :status
      t.integer :spouse_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
