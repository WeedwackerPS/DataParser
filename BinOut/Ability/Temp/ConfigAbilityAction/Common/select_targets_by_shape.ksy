meta:
  id: select_targets_by_shape
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - select_targets
    - ../../../../../aux_types
    - ../../../../../EnumType/enum__ability_targetting
    - ../../../../../EnumType/enum__target_type
seq:
  - id: base
    type: select_targets
  - id: bit_field
    type: u1
  - id: shape_name
    type: aux_types::string
    if: has_field_shape_name
  - id: center_based_on
    type: enum__ability_targetting
    if: has_field_center_based_on
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
  - id: camp_based_on
    type: enum__ability_targetting
    if: has_field_camp_based_on
  - id: size_ratio
    type: aux_types::dynamic_float
    if: has_field_size_ratio
instances:
  has_field_shape_name: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_center_based_on: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_camp_target_type: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_camp_based_on: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_size_ratio: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
