meta:
  id: enum__match_limit_type
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
    enum: match_limit_type
enums:
  match_limit_type:
    0: match_limit_type_none
    1: match_limit_type_map_unlock
