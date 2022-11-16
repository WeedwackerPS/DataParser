meta:
  id: enum__equip_in_slot_type
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
    enum: equip_in_slot_type
enums:
  equip_in_slot_type:
    0: none
    1: take
    2: put
