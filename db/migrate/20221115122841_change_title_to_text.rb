class ChangeTitleToText < ActiveRecord::Migration[7.0]
  # Way 1
  # def change
  #   change_column :posts, :title, :text
  # end

  # Way 2
  def up 
    change_column :posts, :title, :text
  end

  # rollback
  def down 
    change_column :posts, :title, :string
  end
end
