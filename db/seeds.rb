# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if ChemicalElement.first.nil?
  require 'json'

  file = File.read("./db/elements.json")
  elements = JSON.parse(file)

  elements["elements"].each do |element|
    ChemicalElement.create!(
      name: element["name"] ,
      appearance: element["appearance"] ,
      atomic_mass: element["atomic_mass"] ,
      boil: element["boil"] ,
      category: element["category"] ,
      density: element["density"] ,
      discovered_by: element["discovered_by"] ,
      melt: element["melt"] ,
      molar_heat: element["molar_heat"] ,
      named_by: element["named_by"] ,
      number: element["number"] ,
      period: element["period"] ,
      phase: element["phase"] ,
      source: element["source"] ,
      spectral_img: element["spectral_img"] ,
      summary: element["summary"] ,
      symbol: element["symbol"] ,
      xpos: element["xpos"] ,
      ypos: element["ypos"] ,
      shells: element["shells"] ,
      electron_configuration: element["electron_configuration"] ,
      electron_configuration_semantic: element["electron_configuration_semantic"] ,
      electron_affinity: element["electron_affinity"] ,
      electronegativity_pauling: element["electronegativity_pauling"] ,
      ionization_energies: element["ionization_energies"] ,
      cpk_hex: element["cpk-hex"] ,
    )
  end
  puts "Данные в таблицу 'ChemicalElement' - успешно добавлены!"
end