meta:
  id: enum__persistent_furniture_type
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
    enum: persistent_furniture_type
enums:
  persistent_furniture_type:
    0: wall
    1: floor
    2: ceil
    3: chandelier
    4: door
    5: stair
    6: invalid
