meta:
  id: enum__talk_show_type
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
    enum: talk_show_type
enums:
  talk_show_type:
    0: talk_show_default
    1: talk_show_force_select
