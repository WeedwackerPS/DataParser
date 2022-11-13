meta:
  id: enum__dialog_steer_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__dialog_steer_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: dialog_steer_type
enums:
  dialog_steer_type:
    0: free
    1: absolute
    2: to_local_avatar
    3: return_
    4: to_local_avatar_advanced
    5: look_at_only
    6: to_target
    7: to_target_advanced
    8: follow_camera
    9: other
