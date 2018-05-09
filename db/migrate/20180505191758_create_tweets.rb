class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :body, null: false
      t.text :name, null: false

      t.timestamps
    end
  end
end
