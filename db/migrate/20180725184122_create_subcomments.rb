class CreateSubcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :subcomments do |t|
      t.text :content
      t.timestamps
    end
  end
end
