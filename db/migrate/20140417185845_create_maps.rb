class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :Virsuliskiu g. 40, Vilnius
      t.float :54.707933
      t.float :25.227555

      t.timestamps
    end
  end
end
