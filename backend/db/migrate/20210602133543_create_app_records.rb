class CreateAppRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :app_records do |t|
      t.string :company_name
      t.string :position
      t.string :description
      t.integer :salary
      t.string :city 
      t.string :interest_level
      t.string :app_link
      t.string :notes
      t.date :date_applied
      t.date :last_contact

      t.integer :user_id

      t.timestamps
    end
  end
end
