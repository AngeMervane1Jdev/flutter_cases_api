class CreateCases < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.string :idx
      t.string :name;
      t.string :gender;
      t.integer :age;
      t.string :address;
      t.string :city;
      t.string :country;
      t.string :status;
      t.string :updated;
      t.timestamps
    end
  end
end
