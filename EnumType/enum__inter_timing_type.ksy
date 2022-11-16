meta:
  id: enum__inter_timing_type
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
    enum: inter_timing_type
enums:
  inter_timing_type:
    0: enter
    1: btn
    2: exit
