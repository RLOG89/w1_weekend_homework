def pet_shop_name(obj)
  '''Get pet shop name!'''
  return obj[:name]
end

def total_cash(obj)
  return obj[:admin][:total_cash]
end

def add_or_remove_cash(obj, amount)
  cash = total_cash(obj)
  obj[:admin][:total_cash] += amount
end  
