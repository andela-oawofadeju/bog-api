class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :post
      t.string :authorized_by
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
