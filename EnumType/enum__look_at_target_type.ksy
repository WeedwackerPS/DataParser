meta:
  id: enum__look_at_target_type
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
    enum: look_at_target_type
enums:
  look_at_target_type:
    0: npc
    1: camera
    2: none
