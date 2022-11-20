meta:
  id: by_item_number
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: item_num
    type: aux_types::vlq_base128_le_u
    if: has_field_item_num
instances:
  has_field_item_id: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_item_num: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
