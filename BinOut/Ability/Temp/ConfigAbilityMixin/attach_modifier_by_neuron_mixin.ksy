meta:
  id: attach_modifier_by_neuron_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__neuron_mixin_remove_operator_type
    - ../../../../ArrayType/array_of__enum__neuron_name__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: neuron_name_list
    type: array_of__enum__neuron_name__length_u
    if: has_field_neuron_name_list
  - id: remove_operator
    type: enum__neuron_mixin_remove_operator_type
    if: has_field_remove_operator
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: authority_only
    type: u1
    if: has_field_authority_only
instances:
  has_field_neuron_name_list: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_remove_operator: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_modifier_name: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_authority_only: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
