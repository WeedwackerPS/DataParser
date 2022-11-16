meta:
  id: enum__map_tag_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: map_tag_type
enums:
  map_tag_type:
    0: big_world
    1: home_world
    2: islands
