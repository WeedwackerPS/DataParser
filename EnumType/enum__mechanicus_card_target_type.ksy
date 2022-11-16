meta:
  id: enum__mechanicus_card_target_type
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
    enum: mechanicus_card_target_type
enums:
  mechanicus_card_target_type:
    0: mechanicus_card_target_none
    1: mechanicus_card_target_all
    2: mechanicus_card_target_gadgets
