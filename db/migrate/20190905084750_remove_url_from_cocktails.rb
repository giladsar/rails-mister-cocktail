class RemoveUrlFromCocktails < ActiveRecord::Migration[5.2]
  def change
    remove_column :cocktails, :url

  end
end
