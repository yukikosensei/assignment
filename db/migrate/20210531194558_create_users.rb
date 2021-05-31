class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :company_name
      t.string :phone_number1
      t.string :phone_number2
      t.string :phone_number3
      t.string :password

      t.timestamps
    end
  end
end
