meta:
  id: enum__settle_ui_type
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
    enum: settle_ui_type
enums:
  settle_ui_type:
    0: settle_ui_al_ways_show
    1: settle_ui_on_success
    2: settle_ui_on_fail
    3: settle_ui_never_show
