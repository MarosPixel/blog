class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :name, 		 null: false
      t.text 	:content,	 null: false, default: ''
      t.integer :creator_id, null: false
      t.timestamps
    end
    add_index :articles, :creator_id
  end
end
