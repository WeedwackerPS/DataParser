meta:
  id: enum__guide_avatar_state
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
    enum: guide_avatar_state
enums:
  guide_avatar_state:
    0: normal
    1: move
    2: can_fly
    3: fly
    4: try_to_move
    5: can_promote
    6: can_up_grade
