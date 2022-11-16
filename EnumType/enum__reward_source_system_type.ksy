meta:
  id: enum__reward_source_system_type
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
    enum: reward_source_system_type
enums:
  reward_source_system_type:
    0: none
    1: mp_play
