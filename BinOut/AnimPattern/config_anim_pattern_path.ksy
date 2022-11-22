meta:
  id: config_anim_pattern_path
  endian: le
  license: GPLv2
  imports:
    - ../../DictType/dict_of__aux_types__string_array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: u1
  - id: anim_pattern_paths
    type: dict_of__aux_types__string_array_of__aux_types__string__length_u
    if: has_field_anim_pattern_paths
instances:
  has_field_anim_pattern_paths: # Field №0
    value: (bit_field & 0b1) != 0
