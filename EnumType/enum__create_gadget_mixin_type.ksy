meta:
  id: enum__create_gadget_mixin_type
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
    enum: create_gadget_mixin_type
enums:
  create_gadget_mixin_type:
    0: only_origin_owner
    1: only_sub_owner
    2: both_owner
