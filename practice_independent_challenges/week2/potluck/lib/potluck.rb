class Potluck

    attr_reader :date,
                :dishes

    def initialize(date)
        @date = date
        @dishes = []
    end

    def add_dish(dish)
        @dishes.push(dish)
    end

    def get_all_from_category(category)
        dishes.find_all do |dish|
            dish.category == category
        end
    end

    def menu
        event_menu = {}
        dishes.each do |dish|
            if dish.category == :appetizer
                event_menu[:appetizer] = dish.name
            elsif dish.category == :entre
                event_menu[:entre] = dish.name
            elsif dish.category == :dessert
                event_menu[:dessert] = dish.name
            end
        end
        return event_menu
    end

    def ratio(category)
        dishes_by_category = dishes.find_all do |dish|
            dish.category == category
        end
        return dishes_by_category.count.to_f / dishes.count.to_f * 100
    end
end