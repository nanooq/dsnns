class CreateIacs < ActiveRecord::Migration
  def change
    create_table :iacs do |t|
      t.string :identity_type
      t.string :identity
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
