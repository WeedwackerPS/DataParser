meta:
  id: voice_trigger_identity
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__audio_voice_trigger
seq:
  - id: bit_field
    type: u1
  - id: game_trigger
    type: enum__audio_voice_trigger
    if: has_field_game_trigger
  - id: game_trigger_args
    type: aux_types::vlq_base128_le_u
    if: has_field_game_trigger_args
instances:
  has_field_game_trigger: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_game_trigger_args: # Field №1
    value: (bit_field & 0b10) != 0
