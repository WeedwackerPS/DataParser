meta:
  id: enum__remove_actor_type
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
    enum: remove_actor_type
enums:
  remove_actor_type:
    0: none
    1: remove
    2: remove_with_disappear
