meta:
  id: element_adjust_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__element_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: change_interval
    type: f4
    if: has_field_change_interval
  - id: element_modifies
    type: dict_of__enum__element_type_aux_types__string
    if: has_field_element_modifies
instances:
  has_field_change_interval: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_element_modifies: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  dict_of__enum__element_type_aux_types__string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__element_type_aux_types__string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__element_type_aux_types__string:
    seq:
      - id: key
        type: enum__element_type
      - id: value
        type: aux_types::string
