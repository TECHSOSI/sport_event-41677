class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :date, null: false
      t.text :event_time_id, null: false
      t.integer :stadium_id, null: false
      t.integer :home_name, null: false
      t.integer :manager, null: false
      t.integer :home_level_id, null: false
      t.integer :home_URL, null: false
      t.integer :umpire_id, null: false
      t.references :fee, null: false, foreign_key: true
      t.progress_id :umpire_id, null: false
      t.home_message :umpire_id, null: false
      t.user :umpire_id, null: false
      
      
      t.timestamps
    end
  end
end