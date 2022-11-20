meta:
  id: enum__equip_type
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
    enum: equip_type
enums:
  equip_type:
    0: equip_none
    1: equip_bracer
    2: equip_necklace
    3: equip_shoes
    4: equip_ring
    5: equip_dress
    6: equip_weapon
