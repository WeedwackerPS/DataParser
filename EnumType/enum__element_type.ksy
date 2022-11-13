meta:
  id: enum__element_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__element_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: element_type
enums:
  element_type:
    0: none
    1: fire
    2: water
    3: grass
    4: electric
    5: ice
    6: frozen
    7: wind
    8: rock
    9: anti_fire
    10: vehicle_mute_ice
    11: count
