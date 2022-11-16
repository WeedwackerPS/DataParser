meta:
  id: enum__chest_show_moment
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
    enum: chest_show_moment
enums:
  chest_show_moment:
    0: none
    1: on_create
    2: on_unlock
