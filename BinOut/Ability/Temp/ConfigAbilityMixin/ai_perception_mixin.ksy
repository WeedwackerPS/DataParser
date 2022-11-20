meta:
  id: ai_perception_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: feature_tag_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_feature_tag_i_ds
  - id: perception_template_id
    type: aux_types::vlq_base128_le_u
    if: has_field_perception_template_id
instances:
  has_field_feature_tag_i_ds: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_perception_template_id: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
