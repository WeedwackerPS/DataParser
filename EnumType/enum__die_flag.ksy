meta:
  id: enum__die_flag
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
    enum: die_flag
enums:
  die_flag:
    0: alive
    1: normal
    2: drowned
    3: in_air
    4: retreat
    5: fall
