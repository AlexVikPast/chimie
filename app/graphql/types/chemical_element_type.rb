module Types
  class ChemicalElementType < Types::BaseObject
    field :id, GraphQL::Types::ID, null: false
    field :name, String, null: true
    field :appearance, String, null: true
    field :atomic_mass, Float, null: true
    field :boil, Float, null: true
    field :category, String, null: true
    field :density, Float, null: true
    field :discovered_by, String, null: true
    field :melt, Float, null: true
    field :molar_heat, Float, null: true
    field :named_by, String, null: true
    field :number, Int, null: true
    field :period, Int, null: true
    field :phase, String, null: true
    field :source, String, null: true
    field :spectral_img, String, null: true
    field :summary, String, null: true
    field :symbol, String, null: true
    field :xpos, Int, null: true
    field :ypos, Int, null: true
    field :shells, [Int], null: true
    field :electron_configuration, String, null: true
    field :electron_configuration_semantic, String, null: true
    field :electron_affinity, Float, null: true
    field :electronegativity_pauling, Float, null: true
    field :ionization_energies, [Float], null: true
    field :cpk_hex, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end