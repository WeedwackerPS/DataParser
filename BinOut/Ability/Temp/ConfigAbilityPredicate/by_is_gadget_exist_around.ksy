meta:
  id: by_is_gadget_exist_around
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: gadget_id_array
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_gadget_id_array
  - id: trun_to_target
    type: u1
    if: has_field_trun_to_target
instances:
  has_field_gadget_id_array: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_trun_to_target: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
