meta:
  id: enum__check_hit_layer_type
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
    enum: check_hit_layer_type
enums:
  check_hit_layer_type:
    0: only_hit_box
    1: only_hit_scene
    2: only_hit_massive_entity
    3: both
