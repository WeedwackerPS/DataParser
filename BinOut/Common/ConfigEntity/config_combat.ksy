meta:
  id: config_combat
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - config_combat_property
    - config_die
    - config_summon
    - dict_of__aux_types__string_config_attack_event
seq:
  - id: bit_field
    type: u1
  - id: property
    type: config_combat_property
    if: has_field_property
  - id: be_hit
    type: config_combat_be_hit
    if: has_field_be_hit
  - id: combat_lock
    type: config_combat_lock
    if: has_field_combat_lock
  - id: die
    type: config_die
    if: has_field_die
  - id: anim_events
    type: dict_of__aux_types__string_config_attack_event
    if: has_field_anim_events
  - id: summon
    type: config_summon
    if: has_field_summon
instances:
  has_field_property: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_be_hit: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_combat_lock: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_die: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_anim_events: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_summon: # Field №5
    value: (bit_field & 0b100000) != 0
types:
  config_combat_be_hit:
    seq:
      - id: bit_field
        type: u1
      - id: hit_blood_effect
        type: aux_types::string
        if: has_field_hit_blood_effect
      - id: hit_auto_redirect
        type: u1
        if: has_field_hit_auto_redirect
      - id: mute_all_hit
        type: u1
        if: has_field_mute_all_hit
      - id: mute_all_hit_effect
        type: u1
        if: has_field_mute_all_hit_effect
      - id: mute_all_hit_text
        type: u1
        if: has_field_mute_all_hit_text
      - id: ignore_min_hit_vy
        type: u1
        if: has_field_ignore_min_hit_vy
      - id: blend_shake
        type: disp__config_be_hit_blend_shake
        if: has_field_blend_shake
    instances:
      has_field_hit_blood_effect: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_hit_auto_redirect: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_mute_all_hit: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_mute_all_hit_effect: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_mute_all_hit_text: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_ignore_min_hit_vy: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_blend_shake: # Field №6
        value: (bit_field & 0b1000000) != 0
  disp__config_be_hit_blend_shake:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_be_hit_blend_shake
            1: config_be_hit_blend_shake_by_ainmator
            _: aux_types::error
  config_be_hit_blend_shake:
    seq: []
  config_be_hit_blend_shake_by_ainmator:
    seq:
      - id: base
        type: config_be_hit_blend_shake
      - id: bit_field
        type: u1
      - id: shake_flag_map
        type: array_of__shake_by_ainmator__length_u
        if: has_field_shake_flag_map
    instances:
      has_field_shake_flag_map: # Field №0
        value: (bit_field & 0b1) != 0
  array_of__shake_by_ainmator__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: shake_by_ainmator
        repeat: expr
        repeat-expr: length.value
  shake_by_ainmator:
    seq:
      - id: bit_field
        type: u1
      - id: shake_flag
        type: f4
        if: has_field_shake_flag
      - id: hit_box_names
        type: array_of__aux_types__string__length_u
        if: has_field_hit_box_names
    instances:
      has_field_shake_flag: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_hit_box_names: # Field №1
        value: (bit_field & 0b10) != 0
  config_combat_lock:
    seq:
      - id: bit_field
        type: u1
      - id: lock_shape
        type: aux_types::string
        if: has_field_lock_shape
      - id: deny_lock_on
        type: u1
        if: has_field_deny_lock_on
      - id: lock_weight_yaxis_param
        type: f4
        if: has_field_lock_weight_yaxis_param
      - id: lock_weight_yaxis_threshold
        type: f4
        if: has_field_lock_weight_yaxis_threshold
      - id: lock_type
        type: aux_types::string
        if: has_field_lock_type
      - id: override_range
        type: f4
        if: has_field_override_range
      - id: override_normal_pri
        type: f4
        if: has_field_override_normal_pri
      - id: override_combat_pri
        type: f4
        if: has_field_override_combat_pri
    instances:
      has_field_lock_shape: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_deny_lock_on: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_lock_weight_yaxis_param: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_lock_weight_yaxis_threshold: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_lock_type: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_override_range: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_override_normal_pri: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_override_combat_pri: # Field №7
        value: (bit_field & 0b10000000) != 0
