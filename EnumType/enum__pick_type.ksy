meta:
  id: enum__pick_type
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
    enum: pick_type
enums:
  pick_type:
    0: none
    1: monster
    2: auto
    3: select
    4: attract
    5: auto_select
    6: group_auto
