meta:
  id: enum__luna_rite_region_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: luna_rite_region_type
enums:
  luna_rite_region_type:
    0: luna_rite_region_type_invalid
    1: luna_rite_region_type_liyue
    2: luna_rite_region_type_mengde
    3: luna_rite_region_type_dragonspine
