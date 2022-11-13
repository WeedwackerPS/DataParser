meta:
  id: enum__skill_drag
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__skill_drag:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: skill_drag
enums:
  skill_drag:
    0: drag_none
    1: drag_rotate_camera
    2: drag_rotate_character
