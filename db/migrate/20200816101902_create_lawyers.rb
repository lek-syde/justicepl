class CreateLawyers < ActiveRecord::Migration[6.0]
  def change
    create_table :lawyers do |t|
      t.string :prefix
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.text :firmname
      t.string :phone

      t.timestamps
    end
  end
end
