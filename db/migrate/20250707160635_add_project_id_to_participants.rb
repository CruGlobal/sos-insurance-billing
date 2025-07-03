class AddProjectIdToParticipants < ActiveRecord::Migration[8.0]
  def change
    add_reference :participants, :project, null: false, foreign_key: true
  end
end
