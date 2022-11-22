meta:
  id: config_audio_combat
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../Common/audio_one_time_event
    - ../../../EnumType/enum__strike_type
    - ../../../EnumType/enum__element_type
    - ../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: impact_event
    type: audio_one_time_event
    if: has_field_impact_event
  - id: arrow_impact_head_event
    type: audio_one_time_event
    if: has_field_arrow_impact_head_event
  - id: bush_impact_event
    type: audio_one_time_event
    if: has_field_bush_impact_event
  - id: tree_impact_event
    type: audio_one_time_event
    if: has_field_tree_impact_event
  - id: put_away_weapon_event
    type: config_wwise_string
    if: has_field_put_away_weapon_event
  - id: strike_type_switch_key
    type: config_wwise_string
    if: has_field_strike_type_switch_key
  - id: strike_type_switch_map
    type: dict_of__enum__strike_type_config_wwise_string
    if: has_field_strike_type_switch_map
  - id: strike_type_switch_default
    type: config_wwise_string
    if: has_field_strike_type_switch_default
  - id: element_type_switch_key
    type: config_wwise_string
    if: has_field_element_type_switch_key
  - id: element_type_switch_map
    type: dict_of__enum__element_type_config_wwise_string
    if: has_field_element_type_switch_map
  - id: element_type_switch_default
    type: config_wwise_string
    if: has_field_element_type_switch_default
  - id: hit_scene_event
    type: audio_one_time_event
    if: has_field_hit_scene_event
  - id: whether_recurring_switch_key
    type: config_wwise_string
    if: has_field_whether_recurring_switch_key
  - id: hit_oneshot_switch_value
    type: config_wwise_string
    if: has_field_hit_oneshot_switch_value
  - id: hit_recurring_switch_value
    type: config_wwise_string
    if: has_field_hit_recurring_switch_value
  - id: entity_fade_out_event
    type: config_wwise_string
    if: has_field_entity_fade_out_event
  - id: patroller_temperature_rtpc
    type: config_wwise_string
    if: has_field_patroller_temperature_rtpc
  - id: patroller_aware_event
    type: config_wwise_string
    if: has_field_patroller_aware_event
  - id: patroller_alert_event
    type: config_wwise_string
    if: has_field_patroller_alert_event
  - id: patroller_calm_event
    type: config_wwise_string
    if: has_field_patroller_calm_event
  - id: impact_override_events
    type: array_of__audio_impact_override_event__length_u
    if: has_field_impact_override_events
  - id: arrow_impact_override_events
    type: array_of__audio_impact_override_event__length_u
    if: has_field_arrow_impact_override_events
  - id: hitting_scene_ignore_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_hitting_scene_ignore_list
instances:
  has_field_impact_event: # Field №0
    value: (bit_field.value & 0b00000000000000000000001) != 0
  has_field_arrow_impact_head_event: # Field №1
    value: (bit_field.value & 0b00000000000000000000010) != 0
  has_field_bush_impact_event: # Field №2
    value: (bit_field.value & 0b00000000000000000000100) != 0
  has_field_tree_impact_event: # Field №3
    value: (bit_field.value & 0b00000000000000000001000) != 0
  has_field_put_away_weapon_event: # Field №4
    value: (bit_field.value & 0b00000000000000000010000) != 0
  has_field_strike_type_switch_key: # Field №5
    value: (bit_field.value & 0b00000000000000000100000) != 0
  has_field_strike_type_switch_map: # Field №6
    value: (bit_field.value & 0b00000000000000001000000) != 0
  has_field_strike_type_switch_default: # Field №7
    value: (bit_field.value & 0b00000000000000010000000) != 0
  has_field_element_type_switch_key: # Field №8
    value: (bit_field.value & 0b00000000000000100000000) != 0
  has_field_element_type_switch_map: # Field №9
    value: (bit_field.value & 0b00000000000001000000000) != 0
  has_field_element_type_switch_default: # Field №10
    value: (bit_field.value & 0b00000000000010000000000) != 0
  has_field_hit_scene_event: # Field №11
    value: (bit_field.value & 0b00000000000100000000000) != 0
  has_field_whether_recurring_switch_key: # Field №12
    value: (bit_field.value & 0b00000000001000000000000) != 0
  has_field_hit_oneshot_switch_value: # Field №13
    value: (bit_field.value & 0b00000000010000000000000) != 0
  has_field_hit_recurring_switch_value: # Field №14
    value: (bit_field.value & 0b00000000100000000000000) != 0
  has_field_entity_fade_out_event: # Field №15
    value: (bit_field.value & 0b00000001000000000000000) != 0
  has_field_patroller_temperature_rtpc: # Field №16
    value: (bit_field.value & 0b00000010000000000000000) != 0
  has_field_patroller_aware_event: # Field №17
    value: (bit_field.value & 0b00000100000000000000000) != 0
  has_field_patroller_alert_event: # Field №18
    value: (bit_field.value & 0b00001000000000000000000) != 0
  has_field_patroller_calm_event: # Field №19
    value: (bit_field.value & 0b00010000000000000000000) != 0
  has_field_impact_override_events: # Field №20
    value: (bit_field.value & 0b00100000000000000000000) != 0
  has_field_arrow_impact_override_events: # Field №21
    value: (bit_field.value & 0b01000000000000000000000) != 0
  has_field_hitting_scene_ignore_list: # Field №22
    value: (bit_field.value & 0b10000000000000000000000) != 0
types:
  dict_of__enum__strike_type_config_wwise_string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__strike_type_config_wwise_string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__strike_type_config_wwise_string:
    seq:
      - id: key
        type: enum__strike_type
      - id: value
        type: config_wwise_string
  array_of__audio_impact_override_event__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_impact_override_event
        repeat: expr
        repeat-expr: length.value
  audio_impact_override_event:
    seq:
      - id: bit_field
        type: u1
      - id: entity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_entity_id
      - id: impact_event
        type: audio_one_time_event
        if: has_field_impact_event
    instances:
      has_field_entity_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_impact_event: # Field №1
        value: (bit_field & 0b10) != 0
  dict_of__enum__element_type_config_wwise_string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__element_type_config_wwise_string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__element_type_config_wwise_string:
    seq:
      - id: key
        type: enum__element_type
      - id: value
        type: config_wwise_string
