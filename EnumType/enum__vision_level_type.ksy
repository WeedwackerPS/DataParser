meta:
  id: enum__vision_level_type
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
    enum: vision_level_type
enums:
  vision_level_type:
    0: vision_level_normal
    1: vision_level_little_remote
    2: vision_level_remote
    3: vision_level_super
    4: vision_level_nearby
    5: vision_level_super_nearby
    6: vision_level_num
