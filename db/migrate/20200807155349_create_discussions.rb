class CreateDiscussions < ActiveRecord::Migration[6.0]
  def change
    create_table :discussions do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
