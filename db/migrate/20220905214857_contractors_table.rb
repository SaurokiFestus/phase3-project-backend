class ContractorsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :contractors do |t|
      t.string :name
    end
  end
end
