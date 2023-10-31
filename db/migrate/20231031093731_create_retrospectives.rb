class CreateRetrospectives < ActiveRecord::Migration[7.1]
  def change
    create_table :retrospectives, id: :uuid do |t|
      t.datetime :date_of_retro
      t.string :label

      t.timestamps
    end
  end
end
