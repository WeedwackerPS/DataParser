meta:
  id: enum__sound_bank_unload_policy
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: sound_bank_unload_policy
enums:
  sound_bank_unload_policy:
    0: never
    1: exit_stage
    2: cooldown
