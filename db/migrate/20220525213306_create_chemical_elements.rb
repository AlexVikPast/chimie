class CreateChemicalElements < ActiveRecord::Migration[6.1]
  def change
    create_table :chemical_elements do |t|

      t.string :name
      t.string :appearance
      t.decimal :atomic_mass
      t.decimal :boil
      t.string :category
      t.decimal :density
      t.string :discovered_by
      t.decimal :melt
      t.decimal :molar_heat
      t.string :named_by
      t.integer :number
      t.integer :period 
      t.string :phase
      t.string :source
      t.string :spectral_img
      t.string :summary
      t.string :symbol 
      t.integer :xpos
      t.integer :ypos
      t.integer :shells, array:true
      t.string :electron_configuration
      t.string :electron_configuration_semantic
      t.decimal :electron_affinity
      t.decimal :electronegativity_pauling
      t.decimal :ionization_energies, array:true
      t.string :cpk_hex

      t.timestamps
    end
  end
end
