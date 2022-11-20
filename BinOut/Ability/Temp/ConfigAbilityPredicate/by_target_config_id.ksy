meta:
  id: by_target_config_id
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: config_id_array
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_config_id_array
instances:
  has_field_config_id_array: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
