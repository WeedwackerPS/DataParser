meta:
  id: config_audio_surface_type
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../DictType/dict_of__aux_types__string_aux_types__string
seq:
  - id: bit_field
    type: u1
  - id: switch_key
    type: config_wwise_string
    if: has_field_switch_key
  - id: tall_grass_rtpc_id
    type: config_wwise_string
    if: has_field_tall_grass_rtpc_id
  - id: water_depth_rtpc_id
    type: config_wwise_string
    if: has_field_water_depth_rtpc_id
  - id: switch_map
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_switch_map
  - id: rtpc_map
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_rtpc_map
instances:
  has_field_switch_key: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_tall_grass_rtpc_id: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_water_depth_rtpc_id: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_switch_map: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_rtpc_map: # Field №4
    value: (bit_field & 0b10000) != 0
