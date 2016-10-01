require("pry-byebug")

def pet_shop_name( shop_name )
  return shop_name[:name]
end

def total_cash( pet_shop_cash )
  return pet_shop_cash[:admin][:total_cash]
end

def add_or_remove_cash( pet_shop_cash, cash_added)
  return pet_shop_cash[:admin][:total_cash] += cash_added
end

def pets_sold( num_pets )
  return num_pets[:admin][:pets_sold]
end

def increase_pets_sold( num_pets, addtional_pets_sold )
  return num_pets[:admin][:pets_sold] += addtional_pets_sold
end

def stock_count( pet_count )
  return pet_count[:pets].count
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

# def pets_by_breed( pet_shop, breed )
#   counter = 0
#   for pet in pet_shop[:pets]
#     if breed == pet[:breed]
#       counter += 1
#     end
#   end
#   return counter
# end

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


def customer_can_afford_pet()

end
