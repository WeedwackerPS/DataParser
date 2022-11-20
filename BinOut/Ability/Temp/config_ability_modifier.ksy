meta:
  id: config_ability_modifier
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__ability_state
    - ../../../EnumType/enum__element_type
    - ../../../EnumType/enum__modifier_stacking
    - ../../../EnumType/enum__modifier_time_scale
    - ../../../EnumType/enum__unique_modifier_cond
    - Common/array_of__disp__config_ability_action__length_u
    - Common/array_of__disp__config_ability_mixin__length_u
    - ../../../ArrayType/array_of__enum__entity_type__length_u
    - ../../../DictType/dict_of__aux_types__string_aux_types__dynamic_float
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: time_scale
    type: enum__modifier_time_scale
    if: has_field_time_scale
  - id: stacking
    type: enum__modifier_stacking
    if: has_field_stacking
  - id: stacking_option
    type: config_modifier_stacking_option
    if: has_field_stacking_option
  - id: is_buff
    type: u1
    if: has_field_is_buff
  - id: is_debuff
    type: u1
    if: has_field_is_debuff
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: is_unique
    type: u1
    if: has_field_is_unique
  - id: duration
    type: aux_types::dynamic_float
    if: has_field_duration
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
  - id: element_durability
    type: aux_types::dynamic_float
    if: has_field_element_durability
  - id: max_element_durability
    type: f4
    if: has_field_max_element_durability
  - id: purge_increment
    type: f4
    if: has_field_purge_increment
  - id: is_element_durability_mutable
    type: u1
    if: has_field_is_element_durability_mutable
  - id: force_trigger_burning
    type: u1
    if: has_field_force_trigger_burning
  - id: override_weapon_element
    type: u1
    if: has_field_override_weapon_element
  - id: think_interval
    type: aux_types::dynamic_float
    if: has_field_think_interval
  - id: modifier_mixins
    type: array_of__disp__config_ability_mixin__length_u
    if: has_field_modifier_mixins
  - id: trim_think_interval
    type: u1
    if: has_field_trim_think_interval
  - id: properties
    type: dict_of__aux_types__string_aux_types__dynamic_float
    if: has_field_properties
  - id: state
    type: enum__ability_state
    if: has_field_state
  - id: state_option
    type: config_ability_state_option
    if: has_field_state_option
  - id: mute_state_display_effect
    type: u1
    if: has_field_mute_state_display_effect
  - id: apply_attacker_witch_time_ratio
    type: u1
    if: has_field_apply_attacker_witch_time_ratio
  - id: on_added
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_added
  - id: on_removed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_removed
  - id: on_being_hit
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_being_hit
  - id: on_attack_landed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_attack_landed
  - id: on_hitting_other
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_hitting_other
  - id: on_think_interval
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_think_interval
  - id: on_think_interval_is_fixed_update
    type: u1
    if: has_field_on_think_interval_is_fixed_update
  - id: on_kill
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_kill
  - id: on_crash
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_crash
  - id: on_avatar_in
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_avatar_in
  - id: on_avatar_out
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_avatar_out
  - id: on_vehicle_in
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_vehicle_in
  - id: on_vehicle_out
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_vehicle_out
  - id: on_zone_enter
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_zone_enter
  - id: on_zone_exit
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_zone_exit
  - id: on_reconnect
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_reconnect
  - id: on_change_authority
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_change_authority
  - id: forbidden_entities
    type: array_of__enum__entity_type__length_u
    if: has_field_forbidden_entities
  - id: fire_event_when_apply
    type: u1
    if: has_field_fire_event_when_apply
  - id: is_durability_global
    type: u1
    if: has_field_is_durability_global
  - id: tick_think_interval_after_die
    type: u1
    if: has_field_tick_think_interval_after_die
  - id: think_interval_ignore_time_scale
    type: u1
    if: has_field_think_interval_ignore_time_scale
  - id: reduce_durablity_ignore_time_scale
    type: u1
    if: has_field_reduce_durablity_ignore_time_scale
  - id: is_limited_properties
    type: u1
    if: has_field_is_limited_properties
  - id: force_sync_to_remote
    type: u1
    if: has_field_force_sync_to_remote
  - id: buff_id
    type: aux_types::vlq_base128_le_s
    if: has_field_buff_id
  - id: retain_when_durability_is_zero
    type: u1
    if: has_field_retain_when_durability_is_zero
instances:
  has_field_time_scale: # Field №0
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000000001) != 0
  has_field_stacking: # Field №1
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000000010) != 0
  has_field_stacking_option: # Field №2
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000000100) != 0
  has_field_is_buff: # Field №3
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000001000) != 0
  has_field_is_debuff: # Field №4
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000010000) != 0
  has_field_modifier_name: # Field №5
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000100000) != 0
  has_field_is_unique: # Field №6
    value: (bit_field.value & 0b00000000000000000000000000000000000000000001000000) != 0
  has_field_duration: # Field №7
    value: (bit_field.value & 0b00000000000000000000000000000000000000000010000000) != 0
  has_field_element_type: # Field №8
    value: (bit_field.value & 0b00000000000000000000000000000000000000000100000000) != 0
  has_field_element_durability: # Field №9
    value: (bit_field.value & 0b00000000000000000000000000000000000000001000000000) != 0
  has_field_max_element_durability: # Field №10
    value: (bit_field.value & 0b00000000000000000000000000000000000000010000000000) != 0
  has_field_purge_increment: # Field №11
    value: (bit_field.value & 0b00000000000000000000000000000000000000100000000000) != 0
  has_field_is_element_durability_mutable: # Field №12
    value: (bit_field.value & 0b00000000000000000000000000000000000001000000000000) != 0
  has_field_force_trigger_burning: # Field №13
    value: (bit_field.value & 0b00000000000000000000000000000000000010000000000000) != 0
  has_field_override_weapon_element: # Field №14
    value: (bit_field.value & 0b00000000000000000000000000000000000100000000000000) != 0
  has_field_think_interval: # Field №15
    value: (bit_field.value & 0b00000000000000000000000000000000001000000000000000) != 0
  has_field_modifier_mixins: # Field №16
    value: (bit_field.value & 0b00000000000000000000000000000000010000000000000000) != 0
  has_field_trim_think_interval: # Field №17
    value: (bit_field.value & 0b00000000000000000000000000000000100000000000000000) != 0
  has_field_properties: # Field №18
    value: (bit_field.value & 0b00000000000000000000000000000001000000000000000000) != 0
  has_field_state: # Field №19
    value: (bit_field.value & 0b00000000000000000000000000000010000000000000000000) != 0
  has_field_state_option: # Field №20
    value: (bit_field.value & 0b00000000000000000000000000000100000000000000000000) != 0
  has_field_mute_state_display_effect: # Field №21
    value: (bit_field.value & 0b00000000000000000000000000001000000000000000000000) != 0
  has_field_apply_attacker_witch_time_ratio: # Field №22
    value: (bit_field.value & 0b00000000000000000000000000010000000000000000000000) != 0
  has_field_on_added: # Field №23
    value: (bit_field.value & 0b00000000000000000000000000100000000000000000000000) != 0
  has_field_on_removed: # Field №24
    value: (bit_field.value & 0b00000000000000000000000001000000000000000000000000) != 0
  has_field_on_being_hit: # Field №25
    value: (bit_field.value & 0b00000000000000000000000010000000000000000000000000) != 0
  has_field_on_attack_landed: # Field №26
    value: (bit_field.value & 0b00000000000000000000000100000000000000000000000000) != 0
  has_field_on_hitting_other: # Field №27
    value: (bit_field.value & 0b00000000000000000000001000000000000000000000000000) != 0
  has_field_on_think_interval: # Field №28
    value: (bit_field.value & 0b00000000000000000000010000000000000000000000000000) != 0
  has_field_on_think_interval_is_fixed_update: # Field №29
    value: (bit_field.value & 0b00000000000000000000100000000000000000000000000000) != 0
  has_field_on_kill: # Field №30
    value: (bit_field.value & 0b00000000000000000001000000000000000000000000000000) != 0
  has_field_on_crash: # Field №31
    value: (bit_field.value & 0b00000000000000000010000000000000000000000000000000) != 0
  has_field_on_avatar_in: # Field №32
    value: (bit_field.value & 0b00000000000000000100000000000000000000000000000000) != 0
  has_field_on_avatar_out: # Field №33
    value: (bit_field.value & 0b00000000000000001000000000000000000000000000000000) != 0
  has_field_on_vehicle_in: # Field №34
    value: (bit_field.value & 0b00000000000000010000000000000000000000000000000000) != 0
  has_field_on_vehicle_out: # Field №35
    value: (bit_field.value & 0b00000000000000100000000000000000000000000000000000) != 0
  has_field_on_zone_enter: # Field №36
    value: (bit_field.value & 0b00000000000001000000000000000000000000000000000000) != 0
  has_field_on_zone_exit: # Field №37
    value: (bit_field.value & 0b00000000000010000000000000000000000000000000000000) != 0
  has_field_on_reconnect: # Field №38
    value: (bit_field.value & 0b00000000000100000000000000000000000000000000000000) != 0
  has_field_on_change_authority: # Field №39
    value: (bit_field.value & 0b00000000001000000000000000000000000000000000000000) != 0
  has_field_forbidden_entities: # Field №40
    value: (bit_field.value & 0b00000000010000000000000000000000000000000000000000) != 0
  has_field_fire_event_when_apply: # Field №41
    value: (bit_field.value & 0b00000000100000000000000000000000000000000000000000) != 0
  has_field_is_durability_global: # Field №42
    value: (bit_field.value & 0b00000001000000000000000000000000000000000000000000) != 0
  has_field_tick_think_interval_after_die: # Field №43
    value: (bit_field.value & 0b00000010000000000000000000000000000000000000000000) != 0
  has_field_think_interval_ignore_time_scale: # Field №44
    value: (bit_field.value & 0b00000100000000000000000000000000000000000000000000) != 0
  has_field_reduce_durablity_ignore_time_scale: # Field №45
    value: (bit_field.value & 0b00001000000000000000000000000000000000000000000000) != 0
  has_field_is_limited_properties: # Field №46
    value: (bit_field.value & 0b00010000000000000000000000000000000000000000000000) != 0
  has_field_force_sync_to_remote: # Field №47
    value: (bit_field.value & 0b00100000000000000000000000000000000000000000000000) != 0
  has_field_buff_id: # Field №48
    value: (bit_field.value & 0b01000000000000000000000000000000000000000000000000) != 0
  has_field_retain_when_durability_is_zero: # Field №49
    value: (bit_field.value & 0b10000000000000000000000000000000000000000000000000) != 0
types:
  config_modifier_stacking_option:
    seq:
      - id: bit_field
        type: u1
      - id: ability_special_name
        type: aux_types::string
        if: has_field_ability_special_name
      - id: unique_modifier_condition
        type: enum__unique_modifier_cond
        if: has_field_unique_modifier_condition
      - id: max_modifier_num_for_multiple_type
        type: aux_types::dynamic_float
        if: has_field_max_modifier_num_for_multiple_type
      - id: enable_mixed_unique
        type: u1
        if: has_field_enable_mixed_unique
    instances:
      has_field_ability_special_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_unique_modifier_condition: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_max_modifier_num_for_multiple_type: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_enable_mixed_unique: # Field №3
        value: (bit_field & 0b1000) != 0
  config_ability_state_option:
    seq: []