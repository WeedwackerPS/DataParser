meta:
  id: enum__story_camera_pos_type
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
    enum: story_camera_pos_type
enums:
  story_camera_pos_type:
    0: absolute
    1: relative_to_intee
    2: relative_to_inter
    3: relative_pos_to_intee
    4: relative_pos_to_inter
    5: exit
    6: relative_to_intee_only
    7: relative_to_inter_only
    8: relative_to_target_entity
    9: relative_to_multi_target_entity
    10: other
