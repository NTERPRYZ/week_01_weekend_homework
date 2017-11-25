def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
    pet_shop[:admin][:total_cash]+=value
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, value)
  pet_shop[:admin][:pets_sold]+=value
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, chosen_breed)
  found_pets = []
  for pet in pet_shop[:pets]
    if chosen_breed == pet[:breed]
      found_pets.push(pet)
    end
  end
  return found_pets
end

def find_pet_by_name(pet_shop, pet_by_name)
  pets = []
  for pet in pet_shop[:pets]
    if pet_by_name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  array_of_pets = pet_shop[:pets]
  pet_to_delete = find_pet_by_name(pet_shop, name)
  array_of_pets.delete(pet_to_delete)
end

def add_pet_to_stock(pet_shop, new_pet)
  array_of_pets = pet_shop[:pets]
  return array_of_pets.push(new_pet)
end

def customer_pet_count (customer_index)
  return customer_index[:pets].count
end

def add_pet_to_customer(customer_hash, pet_hash)
  return customer_hash[:pets].push(pet_hash)
end
