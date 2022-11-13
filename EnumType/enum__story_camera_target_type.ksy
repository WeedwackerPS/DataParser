meta:
  id: enum__story_camera_target_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__story_camera_target_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: story_camera_target_type
enums:
  story_camera_target_type:
    0: absolute
    1: to_intee
    2: to_inter
    3: to_mid
    4: relative_to_inter
    5: relative_to_target_entity
    6: relative_to_intee_forward
    7: relative_to_inter_forward
    8: relative_to_multi_target_entity
    9: other
