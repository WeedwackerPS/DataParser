meta:
  id: enum__particle_emit_level_type
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
    enum: particle_emit_level_type
enums:
  particle_emit_level_type:
    0: extreme_low
    1: low
    2: middle
    3: high
