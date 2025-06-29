class CreateRecruitments < ActiveRecord::Migration[7.1]
  def change
    create_table :recruitments do |t|
      t.date :date, null: false
      t.integer :event_time_id, null: false
      t.integer :stadium_id, null: false
      t.string :home_name, null: false
      t.string :manager, null: false
      t.integer :home_level_id, null: false
      t.text :home_URL, null: false
      t.integer :umpire_id, null: false
      t.integer :fee, null: false, null: false
      t.integer :progress_id, null: false
      t.text :home_message, null: false
      t.references :user, foreign_key: true
      
      
      t.timestamps
    end
  end
end