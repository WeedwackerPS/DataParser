meta:
  id: by_target_layout_area
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__json_climate_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: area_type
    type: enum__json_climate_type
    if: has_field_area_type
  - id: climate_type
    type: enum__json_climate_type
    if: has_field_climate_type
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
instances:
  has_field_area_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_climate_type: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_area_id: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  target:
    value: base.target
