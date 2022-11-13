meta:
  id: enum__ability_camera_shot_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ability_camera_shot_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ability_camera_shot_type
enums:
  ability_camera_shot_type:
    0: avatar
    1: level
