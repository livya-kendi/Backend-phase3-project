class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
        t.string :word
        t.string :user
        t.timestamp :created_at
    end
  end
end
