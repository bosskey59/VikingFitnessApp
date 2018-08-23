class AddPasswordDigestToVikings < ActiveRecord::Migration[5.2]
  def change
    add_column :vikings, :password_digest, :string
  end
end
