require './lib/dish'

RSpec.describe do
    it 'exists' do
        dish = Dish.new("Couscous Salad", :appetizer)

        expect(dish).to be_a Dish
    end

    it 'gives the dish name' do
        dish = Dish.new("Couscous Salad", :appetizer)

        expect(dish.name).to eq "Couscous Salad"
    end

    it 'gives the course category' do
        dish = Dish.new("Couscous Salad", :appetizer)

        expect(dish.category).to eq :appetizer
    end
end