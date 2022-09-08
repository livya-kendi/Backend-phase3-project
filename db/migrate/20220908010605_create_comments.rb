class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :user
      t.integer :word_id
      t.timestamp :created_at
    end
  end
end
