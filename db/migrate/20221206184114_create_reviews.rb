class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :product
      t.belongs_to :user
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
