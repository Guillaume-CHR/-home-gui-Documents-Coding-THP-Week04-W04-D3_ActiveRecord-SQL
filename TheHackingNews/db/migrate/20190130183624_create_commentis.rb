class CreateCommentis < ActiveRecord::Migration[5.2]
  def change
    create_table :commentis do |t|
    	t.string :content
      t.timestamps
    end
  end
end
