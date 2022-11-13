meta:
  id: enum__element_reaction_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__element_reaction_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: element_reaction_type
enums:
  element_reaction_type:
    0: none
    1: explode
    2: stream
    3: burning
    4: burned
    5: wet
    6: grass_growing
    7: melt
    8: freeze
    9: anti_fire
    10: rock
    11: slow_down
    12: shock
    13: wind
    14: electric
    15: fire
    16: superconductor
    17: swirl_fire
    18: swirl_water
    19: swirl_electric
    20: swirl_ice
    21: swirl_fire_accu
    22: swirl_water_accu
    23: swirl_electric_accu
    24: swirl_ice_accu
    25: stick_rock
    26: stick_water
    27: crystallize_fire
    28: crystallize_water
    29: crystallize_electric
    30: crystallize_ice
    31: frozen_broken
