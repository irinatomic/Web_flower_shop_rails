# db/migrate/6_create_cvet_u_proizvodima.rb

class CreateCvetUProizvodima < ActiveRecord::Migration[6.1]
  def change
    create_table :CvetUProizvodu do |t|
      t.integer :kolicina, null: false

      # foreign keys
      t.bigint :proizvod_id
      t.bigint :cvet_id
      
    end
      # add the foreign key constraint
      add_foreign_key :CvetUProizvodu, :Cvet, column: :cvet_id
      add_foreign_key :CvetUProizvodu, :Proizvod, column: :proizvod_id
  end
end

