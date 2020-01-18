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

  def set_answer
    self.answer = false
    match_vegetable_to_user_input = Vegetable.where(label: self.ask_vege).first
    #check if ask_month is in month attribute array from fruitleg model
    if match_vegetable_to_user_input.months.include?(self.ask_month)
    #if yes, then
    self.answer = true
    #if no, then
    else
      self.answer = false
    end
  end
end
