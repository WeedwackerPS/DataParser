meta:
  id: enum__guide_camera_action
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_camera_action:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_camera_action
enums:
  guide_camera_action:
    0: move
    1: scale