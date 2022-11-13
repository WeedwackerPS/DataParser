meta:
  id: enum__guide_avatar_action
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_avatar_action:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_avatar_action
enums:
  guide_avatar_action:
    0: move
    1: attack
