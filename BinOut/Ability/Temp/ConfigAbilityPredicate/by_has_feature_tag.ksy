meta:
  id: by_has_feature_tag
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
  - id: feature_tag_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_feature_tag_i_ds
instances:
  has_field_feature_tag_i_ds: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
