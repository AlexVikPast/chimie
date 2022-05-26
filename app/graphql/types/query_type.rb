module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :chemical_elements, [Types::ChemicalElementType], null: false,
      description: "chemical_elements"
    def chemical_elements
      ChemicalElement.all
    end

    field :chemical_element_count, Int, null: false,
      description: "chemical_element_count"
    def chemical_element_count
      ChemicalElement.count
    end

    field :chemical_element_Id, Types::ChemicalElementType, null: false, description: "chemical_element find(:id)" do
      argument :id, Int, required: true, description: "id - chemical element"
    end
    def chemical_element_Id(id:)
      ChemicalElement.find_by(id: id)
    end

    field :chemical_element_category, [Types::ChemicalElementType], null: false, description: "chemical_element category" do
      argument :category, String, required: true, description: "category - chemical element"
    end
    def chemical_element_category(category:)
      ChemicalElement.where(category: category)
    end

  end
end
