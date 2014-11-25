class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
