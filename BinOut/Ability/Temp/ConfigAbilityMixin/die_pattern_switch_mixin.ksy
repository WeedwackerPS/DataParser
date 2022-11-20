meta:
  id: die_pattern_switch_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__e_shader_data
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: has_animator_die
    type: u1
    if: has_field_has_animator_die
  - id: mute_all_shader_die_eff
    type: u1
    if: has_field_mute_all_shader_die_eff
  - id: fall_when_air_die
    type: u1
    if: has_field_fall_when_air_die
  - id: die_end_time
    type: f4
    if: has_field_die_end_time
  - id: die_force_disappear_time
    type: f4
    if: has_field_die_force_disappear_time
  - id: die_disappear_effect
    type: aux_types::string
    if: has_field_die_disappear_effect
  - id: die_disappear_effect_delay
    type: f4
    if: has_field_die_disappear_effect_delay
  - id: die_shader_data
    type: enum__e_shader_data
    if: has_field_die_shader_data
  - id: die_shader_enable_duration_time
    type: f4
    if: has_field_die_shader_enable_duration_time
  - id: die_shader_disable_duration_time
    type: f4
    if: has_field_die_shader_disable_duration_time
  - id: die_model_fade_delay
    type: f4
    if: has_field_die_model_fade_delay
  - id: rag_doll_die_end_time_delay
    type: f4
    if: has_field_rag_doll_die_end_time_delay
  - id: start_die_end_at_once
    type: u1
    if: has_field_start_die_end_at_once
  - id: ignore_element_die
    type: u1
    if: has_field_ignore_element_die
instances:
  has_field_has_animator_die: # Field №0
    value: (bit_field.value & 0b00000000000001) != 0
  has_field_mute_all_shader_die_eff: # Field №1
    value: (bit_field.value & 0b00000000000010) != 0
  has_field_fall_when_air_die: # Field №2
    value: (bit_field.value & 0b00000000000100) != 0
  has_field_die_end_time: # Field №3
    value: (bit_field.value & 0b00000000001000) != 0
  has_field_die_force_disappear_time: # Field №4
    value: (bit_field.value & 0b00000000010000) != 0
  has_field_die_disappear_effect: # Field №5
    value: (bit_field.value & 0b00000000100000) != 0
  has_field_die_disappear_effect_delay: # Field №6
    value: (bit_field.value & 0b00000001000000) != 0
  has_field_die_shader_data: # Field №7
    value: (bit_field.value & 0b00000010000000) != 0
  has_field_die_shader_enable_duration_time: # Field №8
    value: (bit_field.value & 0b00000100000000) != 0
  has_field_die_shader_disable_duration_time: # Field №9
    value: (bit_field.value & 0b00001000000000) != 0
  has_field_die_model_fade_delay: # Field №10
    value: (bit_field.value & 0b00010000000000) != 0
  has_field_rag_doll_die_end_time_delay: # Field №11
    value: (bit_field.value & 0b00100000000000) != 0
  has_field_start_die_end_at_once: # Field №12
    value: (bit_field.value & 0b01000000000000) != 0
  has_field_ignore_element_die: # Field №13
    value: (bit_field.value & 0b10000000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
