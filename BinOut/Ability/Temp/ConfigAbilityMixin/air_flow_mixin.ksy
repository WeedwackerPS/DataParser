meta:
  id: air_flow_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__target_type
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: camp_id
    type: aux_types::vlq_base128_le_u
    if: has_field_camp_id
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
  - id: born
    type: disp__config_born_type
    if: has_field_born
instances:
  has_field_gadget_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_camp_id: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_camp_target_type: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_born: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
