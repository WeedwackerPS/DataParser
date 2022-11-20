meta:
  id: button_hold_charge_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: charge_time
    type: f4
    if: has_field_charge_time
  - id: second_charge_time
    type: aux_types::dynamic_float
    if: has_field_second_charge_time
  - id: on_begin_uncharged
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_begin_uncharged
  - id: on_release_uncharged
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_release_uncharged
  - id: on_begin_charged
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_begin_charged
  - id: on_release_charged
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_release_charged
  - id: on_begin_second_charged
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_begin_second_charged
  - id: on_release_second_charged
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_release_second_charged
  - id: charge_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_charge_state_i_ds
instances:
  has_field_skill_id: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_charge_time: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_second_charge_time: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_on_begin_uncharged: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_on_release_uncharged: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_on_begin_charged: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_on_release_charged: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_on_begin_second_charged: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_on_release_second_charged: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_charge_state_i_ds: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
