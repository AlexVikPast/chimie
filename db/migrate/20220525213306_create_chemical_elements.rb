class CreateChemicalElements < ActiveRecord::Migration[6.1]
  def change
    create_table :chemical_elements do |t|

      t.string :name
      t.string :appearance
      t.float :atomic_mass
      t.float :boil
      t.string :category
      t.float :density
      t.string :discovered_by
      t.float :melt
      t.float :molar_heat
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
      t.float :electron_affinity
      t.float :electronegativity_pauling
      t.float :ionization_energies, array:true
      t.string :cpk_hex

      # add_column :log_vzr_searches, :country, :string, array:true, default: []

      t.timestamps
    end
  end
end
