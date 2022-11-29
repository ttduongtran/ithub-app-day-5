class AddCodeToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :code, :integer
  end
end
