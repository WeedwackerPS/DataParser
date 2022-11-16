meta:
  id: enum__new_activity_sale_type
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
    enum: new_activity_sale_type
enums:
  new_activity_sale_type:
    0: new_activity_sale_type_none
    1: new_activity_sale_type_weapon_upgrade
