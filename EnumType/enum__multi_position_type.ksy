meta:
  id: enum__multi_position_type
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
    enum: multi_position_type
enums:
  multi_position_type:
    0: single_source
    1: multi_sources
    2: multi_directions
