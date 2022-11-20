meta:
  id: enum__gacha_item_parent_type
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
    enum: gacha_item_parent_type
enums:
  gacha_item_parent_type:
    0: gacha_item_parent_invalid
    1: gacha_item_parent_s5
    2: gacha_item_parent_s4
    3: gacha_item_parent_s3
