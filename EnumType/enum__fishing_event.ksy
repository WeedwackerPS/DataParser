meta:
  id: enum__fishing_event
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
    enum: fishing_event
enums:
  fishing_event:
    0: none
    1: qte_start
    2: qte_trigger
    3: request_quit
    4: cast_anchor_point
    5: select_bait
    6: pull
    7: notify_bait
