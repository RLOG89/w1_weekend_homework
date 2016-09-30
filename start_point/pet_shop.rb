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