meta:
  id: enum__match_sub_type
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
    enum: match_sub_type
enums:
  match_sub_type:
    0: match_sub_type_none
    1: match_sub_type_hide
    2: match_sub_type_bounce_conjuring
