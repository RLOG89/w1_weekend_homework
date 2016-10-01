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

def find_pet_by_name(obj, name)
  a = obj[:pets].select {|e| e[:name] == name}
  return nil if a.length == 0
  return a[0]
end

def remove_pet_by_name(obj, name)
  obj[:pets].reject! {|e| e[:name] == name}
end

def add_pet_to_stock(obj, pet)
  obj[:pets].push(pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

## Optional!

def customer_can_afford_pet(customer, pet)
  customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(shop, pet, customer)
  return nil unless pet
  return nil unless customer_can_afford_pet(customer, pet)
  add_or_remove_cash(shop, pet[:price])
  customer[:cash] -= pet[:price]
  remove_pet_by_name(shop, pet)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(shop, 1)
end
