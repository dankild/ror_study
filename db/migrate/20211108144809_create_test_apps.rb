class CreateTestApps < ActiveRecord::Migration[6.1]
  def change
    create_table :test_apps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :telegram

      t.timestamps
    end
  end
end
