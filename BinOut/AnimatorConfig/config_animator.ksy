meta:
  id: config_animator
  endian: le
  license: GPLv2
  imports:
    - ../../DictType/dict_of__aux_types__string_aux_types__vlq_base128_le_u
    - ../../DictType/dict_of__aux_types__vlq_base128_le_s_array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: u1
  - id: free_style_state_map
    type: dict_of__aux_types__vlq_base128_le_s_array_of__aux_types__string__length_u
    if: has_field_free_style_state_map
  - id: state_anime_map
    type: dict_of__aux_types__string_aux_types__vlq_base128_le_u
    if: has_field_state_anime_map
instances:
  has_field_free_style_state_map: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_state_anime_map: # Field №1
    value: (bit_field & 0b10) != 0
