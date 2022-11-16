meta:
  id: enum__environment_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: environment_type
enums:
  environment_type:
    0: environment_none
    1: environment_general
    2: environment_grass
    3: environment_riverside
    4: environment_mountain
    5: environment_crab
    6: environment_butterfly
    7: environment_grassshopper
    8: environment_bush
    9: environment_firefly
    10: environment_woods
    11: environment_butterfly_inazuma_high
    12: environment_butterfly_inazuma_low
    13: environment_firefly_inazuma
    14: environment_crab_inazuma
    15: environment_lizard_inazuma
