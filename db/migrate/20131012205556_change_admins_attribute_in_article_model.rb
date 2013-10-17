class ChangeAdminsAttributeInArticleModel < ActiveRecord::Migration
  def change
    remove_column :articles, :admins
    add_column :articles, :admin, :reference
  end
end
