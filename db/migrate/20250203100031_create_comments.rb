class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.references :project, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
