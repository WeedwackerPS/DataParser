meta:
  id: config_element_shield
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__element_type
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../../ArrayType/array_of__f4__length_u
    - ../../ArrayType/array_of__enum__element_type__length_u
seq:
  - id: bit_field
    type: u1
  - id: row
    type: array_of__enum__element_type__length_u
    if: has_field_row
  - id: shield_damage_ratios_map
    type: dict_of__enum__element_type_config_element_shield_resistance
    if: has_field_shield_damage_ratios_map
instances:
  has_field_row: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_shield_damage_ratios_map: # Field №1
    value: (bit_field & 0b10) != 0
types:
  dict_of__enum__element_type_config_element_shield_resistance:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__element_type_config_element_shield_resistance
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__element_type_config_element_shield_resistance:
    seq:
      - id: key
        type: enum__element_type
      - id: value
        type: config_element_shield_resistance
  config_element_shield_resistance:
    seq:
      - id: bit_field
        type: u1
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: damage_ratio
        type: array_of__f4__length_u
        if: has_field_damage_ratio
      - id: restraint
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_restraint
    instances:
      has_field_element_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_damage_ratio: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_restraint: # Field №2
        value: (bit_field & 0b100) != 0
