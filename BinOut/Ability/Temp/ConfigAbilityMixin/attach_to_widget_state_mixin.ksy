meta:
  id: attach_to_widget_state_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: target_widget_material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_target_widget_material_id
  - id: on_active
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_active
  - id: on_disable
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_disable
  - id: on_removed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_removed
instances:
  has_field_target_widget_material_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_on_active: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_on_disable: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_on_removed: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
