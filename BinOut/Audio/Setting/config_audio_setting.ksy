meta:
  id: config_audio_setting
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: u1
  - id: global_volume
    type: audio_setting_slider_post_event
    if: has_field_global_volume
  - id: sfx_volume
    type: audio_setting_slider_post_event
    if: has_field_sfx_volume
  - id: music_volume
    type: audio_setting_slider_post_event
    if: has_field_music_volume
  - id: voice_volume
    type: audio_setting_slider_post_voice
    if: has_field_voice_volume
  - id: vibration
    type: vibration_setting
    if: has_field_vibration
  - id: dual_sense_rtpc
    type: config_wwise_string
    if: has_field_dual_sense_rtpc
instances:
  has_field_global_volume: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_sfx_volume: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_music_volume: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_voice_volume: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_vibration: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_dual_sense_rtpc: # Field №5
    value: (bit_field & 0b100000) != 0
types:
  audio_setting_slider_post_event:
    seq:
      - id: base
        type: audio_setting_slider
      - id: bit_field
        type: u1
      - id: change_event
        type: config_wwise_string
        if: has_field_change_event
    instances:
      has_field_change_event: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      rtpc:
        value: base.rtpc
      text_map:
        value: base.text_map
      min_value:
        value: base.min_value
      max_value:
        value: base.max_value
      each_values:
        value: base.each_values
  audio_setting_slider:
    seq:
      - id: bit_field
        type: u1
      - id: rtpc
        type: config_wwise_string
        if: has_field_rtpc
      - id: text_map
        type: aux_types::string
        if: has_field_text_map
      - id: min_value
        type: aux_types::vlq_base128_le_u
        if: has_field_min_value
      - id: max_value
        type: aux_types::vlq_base128_le_u
        if: has_field_max_value
      - id: each_values
        type: array_of__f4__length_u
        if: has_field_each_values
    instances:
      has_field_rtpc: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_text_map: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_min_value: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_max_value: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_each_values: # Field №4
        value: (bit_field & 0b10000) != 0
