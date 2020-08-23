class CreateLawyerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :lawyer_profiles do |t|
      t.string :prefix

      t.timestamps
    end
  end
end
