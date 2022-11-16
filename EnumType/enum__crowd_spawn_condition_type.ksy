meta:
  id: enum__crowd_spawn_condition_type
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
    enum: crowd_spawn_condition_type
enums:
  crowd_spawn_condition_type:
    0: inclusive
    1: exclusive
