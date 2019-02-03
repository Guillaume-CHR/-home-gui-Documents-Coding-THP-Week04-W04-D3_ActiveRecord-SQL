class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
  	add_reference :commentis, :comment, foreign_key: true
  	add_reference :commentis, :user, foreign_key: true
  end
end
