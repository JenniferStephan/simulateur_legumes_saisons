class Simulation < ApplicationRecord
before_save :set_answer

FL = ["Ail", "Artichaut", "Asperge", "Aubergine",
    "Betterave", "Blette", "Brocoli", "Carotte", "Céleri",
    "ChampignondeParis", "Chou", "ChoudeBruxelles",
    "Chou-fleur", "Concombre", "Courge", "Courgette", "Cresson",
    "Échalote","Endive", "Épinard", "Fenouil", "Haricotvert",
    "Laitue", "Mâche", "Navet",
    "Maïs", "Oignon", "Panais", "Petitpois", "Poireau",
    "Poivron","Potiron", "Radis", "Salsifis", "Tomate",
    "Topinambour", "Abricot", "Cassis", "Cerise", "Citron",
    "Châtaigne","Clémentine", "Coing", "Figue", "Fraise",
    "Framboise", "Groseille", "Kiwi",
    "Mandarine", "Melon", "Mirabelle", "Mûre", "Myrtille",
    "Nectarine","Noisette", "Noix", "Orange", "Pamplemousse",
    "Pêche", "Poire", "Pomme",
    "Prune", "Quetsche", "Raisin", "ReineClaude", "Rhubarbe"]
  MONTH = ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"]

  def set_result
    # if activity == "Libérale" && year_existence == 1 && reglementary == false && accre == true
    #   self.result = 0.06
    #   self.user.update(tax_rate: self.result)
    # elsif activity == "Libérale" && year_existence == 2 && reglementary == false && accre == true
    #   self.result = 0.12
    #   self.user.update(tax_rate: self.result)
    # elsif activity == "Libérale" && year_existence == 3 && reglementary == false && accre == true
    #   self.result = 0.17
    #   self.user.update(tax_rate: self.result)
    # elsif activity == "Libérale" && year_existence == 4 && reglementary == false && accre == true
    #   self.result = 0.23
    #   self.user.update(tax_rate: self.result)
    # elsif activity == "Libérale" && accre == false
    #   self.result = 0.23
    #   self.user.update(tax_rate: self.result)
    # end
  end
end
