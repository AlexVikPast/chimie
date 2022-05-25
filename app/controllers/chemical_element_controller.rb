class ChemicalElementController < ApplicationController
  def index
    chemical_elements = ChemicalElement.all 
    render json: {
      "elements_count": chemical_elements.count,
      "elements": chemical_elements
    }
  end

  def show
    element = ChemicalElement.find_by(id: params[:id])
    element = "Element not found" if element.nil?
    render json: {"element": element }
  end
end
