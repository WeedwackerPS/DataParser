meta:
  id: config_vod_player
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__vod_player_type
seq:
  - id: bit_field
    type: u1
  - id: vod_player_type
    type: enum__vod_player_type
    if: has_field_vod_player_type
instances:
  has_field_vod_player_type: # Field №0
    value: (bit_field & 0b1) != 0
