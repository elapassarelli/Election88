
def can_vote(name, array)
  if array.include?(name) == true
    return true
  else
    return false
  end
end

def is_admin(key)
  if key == "blazers"
    return true
  else
    return false
  end
end

# def modify_array(name, array)
#   new_array = array.push(name)
#   array = new_array
# end
