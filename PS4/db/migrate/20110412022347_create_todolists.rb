class CreateTodolists < ActiveRecord::Migration
  def self.up
    create_table :todolists do |t|
      t.string :Todo

      t.timestamps
    end
  end

  def self.down
    drop_table :todolists
  end
end
