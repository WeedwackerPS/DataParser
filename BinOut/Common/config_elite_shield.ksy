meta:
  id: config_elite_shield
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__enum__element_type__length_u
    - ../../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: u1
  - id: row
    type: array_of__enum__element_type__length_u
    if: has_field_row
  - id: shield_damage_ratios_map
    type: dict_of__aux_types__string_config_elite_shield_resistance
    if: has_field_shield_damage_ratios_map
instances:
  has_field_row: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_shield_damage_ratios_map: # Field №1
    value: (bit_field & 0b10) != 0
types:
  dict_of__aux_types__string_config_elite_shield_resistance:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_elite_shield_resistance
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_elite_shield_resistance:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_elite_shield_resistance
  config_elite_shield_resistance:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: aux_types::string
        if: has_field_type
      - id: damage_ratio
        type: array_of__f4__length_u
        if: has_field_damage_ratio
      - id: damage_suffer_ratio
        type: array_of__f4__length_u
        if: has_field_damage_suffer_ratio
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_damage_ratio: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_damage_suffer_ratio: # Field №2
        value: (bit_field & 0b100) != 0
