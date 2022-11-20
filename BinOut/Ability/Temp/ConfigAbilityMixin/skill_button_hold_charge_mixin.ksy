meta:
  id: skill_button_hold_charge_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../ArrayType/array_of__f4__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: allow_hold_lock_direction
    type: u1
    if: has_field_allow_hold_lock_direction
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: next_loop_trigger_id
    type: aux_types::string
    if: has_field_next_loop_trigger_id
  - id: end_hold_trigger
    type: aux_types::string
    if: has_field_end_hold_trigger
  - id: before_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_before_state_i_ds
  - id: before_hold_duration
    type: f4
    if: has_field_before_hold_duration
  - id: charge_loop_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_charge_loop_state_i_ds
  - id: after_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_after_state_i_ds
  - id: charge_loop_durations
    type: array_of__f4__length_u
    if: has_field_charge_loop_durations
  - id: transient_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_transient_state_i_ds
instances:
  has_field_allow_hold_lock_direction: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_skill_id: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_next_loop_trigger_id: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_end_hold_trigger: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_before_state_i_ds: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_before_hold_duration: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_charge_loop_state_i_ds: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_after_state_i_ds: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_charge_loop_durations: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_transient_state_i_ds: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
