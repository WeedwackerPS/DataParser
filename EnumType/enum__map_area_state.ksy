meta:
  id: enum__map_area_state
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
    enum: map_area_state
enums:
  map_area_state:
    0: mist_close
    1: mist_open
