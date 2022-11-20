meta:
  id: enum__control_part_do_on_un_enabled
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
    enum: control_part_do_on_un_enabled
enums:
  control_part_do_on_un_enabled:
    0: stay
    1: to_forward_immediately
    2: rotate_to_forward
