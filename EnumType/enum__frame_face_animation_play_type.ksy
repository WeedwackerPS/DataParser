meta:
  id: enum__frame_face_animation_play_type
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
    enum: frame_face_animation_play_type
enums:
  frame_face_animation_play_type:
    0: loop
    1: normal
    2: clamp
