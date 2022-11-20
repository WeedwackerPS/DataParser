meta:
  id: enum__particle_shape_type
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
    enum: particle_shape_type
enums:
  particle_shape_type:
    0: volume
    1: edge
    2: shell
