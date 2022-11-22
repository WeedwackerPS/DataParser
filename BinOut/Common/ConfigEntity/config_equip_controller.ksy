meta:
  id: config_equip_controller
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../DictType/dict_of__aux_types__string_aux_types__string
    - ../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: u1
  - id: attach_points
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_attach_points
  - id: sheath_point
    type: aux_types::string
    if: has_field_sheath_point
  - id: dissolve_sheath_fade_delay
    type: f4
    if: has_field_dissolve_sheath_fade_delay
  - id: dissolve_sheath_fade_time
    type: f4
    if: has_field_dissolve_sheath_fade_time
  - id: dissolve_take_fade_time
    type: f4
    if: has_field_dissolve_take_fade_time
  - id: trigger_to_states
    type: array_of__trigger_to_states__length_u
    if: has_field_trigger_to_states
  - id: weapon_away_from_hand_states
    type: array_of__weapon_away_from_hand_state__length_u
    if: has_field_weapon_away_from_hand_states
instances:
  has_field_attach_points: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_sheath_point: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_dissolve_sheath_fade_delay: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_dissolve_sheath_fade_time: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_dissolve_take_fade_time: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_trigger_to_states: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_weapon_away_from_hand_states: # Field №6
    value: (bit_field & 0b1000000) != 0
types:
  array_of__trigger_to_states__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: trigger_to_states
        repeat: expr
        repeat-expr: length.value
  trigger_to_states:
    seq:
      - id: bit_field
        type: u1
      - id: trigger
        type: aux_types::string
        if: has_field_trigger
      - id: play_time
        type: f4
        if: has_field_play_time
      - id: states
        type: array_of__aux_types__string__length_u
        if: has_field_states
      - id: bow_draw_times
        type: array_of__bow_draw_time__length_u
        if: has_field_bow_draw_times
      - id: float_id
        type: aux_types::string
        if: has_field_float_id
      - id: float_value
        type: f4
        if: has_field_float_value
    instances:
      has_field_trigger: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_play_time: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_states: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_bow_draw_times: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_float_id: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_float_value: # Field №5
        value: (bit_field & 0b100000) != 0
  array_of__weapon_away_from_hand_state__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: weapon_away_from_hand_state
        repeat: expr
        repeat-expr: length.value
  weapon_away_from_hand_state:
    seq:
      - id: bit_field
        type: u1
      - id: state
        type: aux_types::string
        if: has_field_state
      - id: start_norm_time
        type: f4
        if: has_field_start_norm_time
      - id: end_norm_time
        type: f4
        if: has_field_end_norm_time
      - id: delay_appear_time
        type: f4
        if: has_field_delay_appear_time
      - id: dissolve_show_time
        type: f4
        if: has_field_dissolve_show_time
      - id: dissolve_hide_time
        type: f4
        if: has_field_dissolve_hide_time
    instances:
      has_field_state: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_start_norm_time: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_end_norm_time: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_delay_appear_time: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_dissolve_show_time: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_dissolve_hide_time: # Field №5
        value: (bit_field & 0b100000) != 0
  array_of__bow_draw_time__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: bow_draw_time
        repeat: expr
        repeat-expr: length.value

  bow_draw_time:
    seq:
      - id: bit_field
        type: u1
      - id: bow_draw_start_norm_time
        type: f4
        if: has_field_bow_draw_start_norm_time
      - id: bow_draw_end_norm_time
        type: f4
        if: has_field_bow_draw_end_norm_time
      - id: bow_string_override_point
        type: aux_types::string
        if: has_field_bow_string_override_point
    instances:
      has_field_bow_draw_start_norm_time: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_bow_draw_end_norm_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_bow_string_override_point: # Field №2
        value: (bit_field & 0b100) != 0
