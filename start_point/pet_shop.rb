def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed)
  return shop[:pets].select{|e| e[:breed] == breed}
end

def find_pet_by_name(shop, name)
  '''Broken because multiple pets could have the same name'''
  shop[:pets].select {|e| e[:name] == name}[0]
end

def remove_pet_by_name(shop, name)
  shop[:pets].reject! {|e| e[:name] == name}
end

def add_pet_to_stock(shop, pet)
  shop[:pets].push(pet)
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
