meta:
  id: enum__recipe_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: recipe_type
enums:
  recipe_type:
    0: recipe_type_none
    1: recipe_type_combine
    2: recipe_type_convert
    3: recipe_type_combine_homeworld
