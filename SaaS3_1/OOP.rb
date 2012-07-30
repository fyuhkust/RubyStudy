class Dessert
  def initialize(name, calories)
    @name = name
    @calories = caloreis
  end
  
  def healthy?
    if(@calories > 200)
      return false
    else
      return true
    end
  end
  def delicious?
    return true
  end
end
 
class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name,calories)
    @flavor = flavor
  end
  def delicious?
    if(@flavor == "black licorice")
      return false
    else 
      return true
    end
  end
end



