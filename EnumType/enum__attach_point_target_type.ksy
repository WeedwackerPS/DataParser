meta:
  id: enum__attach_point_target_type
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
    enum: attach_point_target_type
enums:
  attach_point_target_type:
    0: target
    1: self
    2: caster
    3: applier
