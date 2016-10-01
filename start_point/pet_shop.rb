require("pry-byebug")

def pet_shop_name( pet_shop )
  return pet_shop[:name]
end

def total_cash( pet_shop )
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash( pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold( pet_shop )
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold( pet_shop, sales )
  return pet_shop[:admin][:pets_sold] += sales
end

def stock_count( pet_shop )
  return pet_shop[:pets].count
end

def pets_by_breed( pet_shop, breed )
  pets_array = []

  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      pets_array.push(pet) 
    end
  end
  return pets_array
end

def find_pet_by_name( pet_shop, name )
  pets = Array.new()
    for pet in pet_shop[:pets]
      if name == pet[:name]
        pets.push(pet)
      end
    end
    return pets[0]
end


def remove_pet_by_name( pet_shop, name )
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock( pet_shop, new_pet )
  return pet_shop[:pets].push(new_pet)
end

def customer_pet_count( customer )
  return customer[:pets].count
end

def add_pet_to_customer( customer, new_pet )
  return customer[:pets].push( new_pet ) 
end


def customer_can_afford_pet( customer, pet )
  customer[:cash] >= pet[:price]
end

def sell_pet_to_customer( pet_shop, pet, customer )
   return nil unless pet
   return nil unless customer_can_afford_pet( customer, pet )
    increase_pets_sold( pet_shop, 1 )
    add_or_remove_cash( pet_shop, pet[:price] )
    add_pet_to_customer( customer, pet )
end

# ask if should also deduct customer funds and remove pet from shop for completeness

