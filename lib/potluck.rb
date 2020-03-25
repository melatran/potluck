class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    dishes << new_dish
  end

  def get_all_from_category(type)
    course = dishes.select do |dish|
      dish.category == type
    end
    course
  end
end
