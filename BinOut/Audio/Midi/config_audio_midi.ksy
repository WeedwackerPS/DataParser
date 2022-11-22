meta:
  id: config_audio_midi
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../DictType/dict_of__aux_types__vlq_base128_le_s_aux_types__vlq_base128_le_s
    - ../Common/dict_of__aux_types__vlq_base128_le_s_config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: instruments
    type: dict_of__aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_wwise_string
    if: has_field_instruments
  - id: freeplay_buttons
    type: dict_of__aux_types__vlq_base128_le_s_aux_types__vlq_base128_le_s
    if: has_field_freeplay_buttons
  - id: freeplay_timeout
    type: f4
    if: has_field_freeplay_timeout
  - id: freeplay_max_distance
    type: f4
    if: has_field_freeplay_max_distance
instances:
  has_field_instruments: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_freeplay_buttons: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_freeplay_timeout: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_freeplay_max_distance: # Field №3
    value: (bit_field & 0b1000) != 0
  dict_of__aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_wwise_string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_wwise_string
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_wwise_string:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: dict_of__aux_types__vlq_base128_le_s_config_wwise_string
