def pet_shop_name(obj)
  '''Get pet shop name!'''
  return obj[:name]
end

def total_cash(obj)
  return obj[:admin][:total_cash]
end

def add_or_remove_cash(obj, amount)
  obj[:admin][:total_cash] += amount
end

def pets_sold(obj)
  return obj[:admin][:pets_sold]
end

def increase_pets_sold(obj, amount)
  obj[:admin][:pets_sold] += amount
end

def stock_count(obj)
  return obj[:pets].count
end

def pets_by_breed(obj, breed)
  return obj[:pets].select{|e| e[:breed] == breed}
end
