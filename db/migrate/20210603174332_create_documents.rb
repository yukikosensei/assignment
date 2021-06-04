class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :employer
      t.string :employee
      t.string :start_date
      t.string :end_date
      t.string :postal_code
      t.string :address
      t.string :company_name
      t.string :salary
      t.string :job_detail

      t.timestamps
    end
  end
end
