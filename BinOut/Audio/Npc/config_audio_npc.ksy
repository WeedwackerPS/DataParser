meta:
  id: config_audio_npc
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: default_vocal_bone_name
    type: aux_types::string
    if: has_field_default_vocal_bone_name
instances:
  has_field_default_vocal_bone_name: # Field №0
    value: (bit_field & 0b1) != 0
