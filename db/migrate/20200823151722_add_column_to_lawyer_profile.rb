class AddColumnToLawyerProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :lawyer_profiles, :firstname, :string
    add_column :lawyer_profiles, :lastname, :string
    add_column :lawyer_profiles, :middlename, :string
    add_column :lawyer_profiles, :firmname, :string
    add_column :lawyer_profiles, :phone, :string
  end
end
