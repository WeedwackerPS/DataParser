meta:
  id: enum__push_tips_codex_type
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
    enum: push_tips_codex_type
enums:
  push_tips_codex_type:
    0: codex_none
    1: codex_element
    2: codex_enemy
    3: codex_system
    4: codex_adventure
    999: codex_unrecorded
