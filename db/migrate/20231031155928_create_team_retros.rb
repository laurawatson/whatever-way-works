class CreateTeamRetros < ActiveRecord::Migration[7.1]
  def change
    create_table :team_retros, id: :uuid do |t|
      t.references :team, null: false, foreign_key: true, type: :uuid
      t.references :retros, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
