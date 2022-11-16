meta:
  id: enum__audio_scope
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
    enum: audio_scope
enums:
  audio_scope:
    0: global_
    1: local_
