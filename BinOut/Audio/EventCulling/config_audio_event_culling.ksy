meta:
  id: config_audio_event_culling
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - disp__config_audio_event_culling_rule_base
seq:
  - id: bit_field
    type: u1
  - id: rule_map
    type: dict_of__aux_types__string_array_of__disp__config_audio_event_culling_rule_base__length_u
    if: has_field_rule_map
  - id: global_rules
    type: array_of__disp__config_audio_event_culling_rule_base__length_u
    if: has_field_global_rules
instances:
  has_field_rule_map: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_global_rules: # Field №1
    value: (bit_field & 0b10) != 0
types:
  dict_of__aux_types__string_array_of__disp__config_audio_event_culling_rule_base__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_array_of__disp__config_audio_event_culling_rule_base__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_array_of__disp__config_audio_event_culling_rule_base__length_u:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: array_of__disp__config_audio_event_culling_rule_base__length_u
  array_of__disp__config_audio_event_culling_rule_base__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_audio_event_culling_rule_base
        repeat: expr
        repeat-expr: length.value
