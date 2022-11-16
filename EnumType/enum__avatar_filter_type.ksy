meta:
  id: enum__avatar_filter_type
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
    enum: avatar_filter_type
enums:
  avatar_filter_type:
    0: avatar_filter_none
    1: avatar_filter_avatar_id
    2: avatar_filter_weapon_type
    3: avatar_filter_element_type
