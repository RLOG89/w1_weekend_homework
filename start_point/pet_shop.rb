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