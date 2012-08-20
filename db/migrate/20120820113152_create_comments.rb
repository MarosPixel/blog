class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :commentable_type, null: false, limit: 20
      t.integer :commentable_id,   null: false
      t.text 	  :content,          null: false, default: ''
      t.integer	:creator_id,       null: false
      t.timestamps
    end
    add_index :comments, [:commentable_id, :commentable_type]
    add_index :comments, :creator_id
  end
end
