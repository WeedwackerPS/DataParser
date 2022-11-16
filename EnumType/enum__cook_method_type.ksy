meta:
  id: enum__cook_method_type
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
    enum: cook_method_type
enums:
  cook_method_type:
    0: cook_method_none
    1: cook_method_steam
    2: cook_method_boil
    3: cook_method_fry
    4: cook_method_bake
