meta:
  id: enum__create_sever_gadget_op_type
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
    enum: create_sever_gadget_op_type
enums:
  create_server_gadget_op_type:
    1: none
    2: retract
    3: retract_and_create
