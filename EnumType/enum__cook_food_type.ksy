meta:
  id: enum__cook_food_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__cook_food_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: cook_food_type
enums:
  cook_food_type:
    0: cook_food_none
    1: cook_food_heal
    2: cook_food_attack
    3: cook_food_function
    4: cook_food_defense
    5: cook_recipe
