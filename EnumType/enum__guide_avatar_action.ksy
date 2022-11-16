meta:
  id: enum__guide_avatar_action
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
    enum: guide_avatar_action
enums:
  guide_avatar_action:
    0: move
    1: attack
