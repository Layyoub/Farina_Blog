class AddUsernameToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :username, :string
  end
end
