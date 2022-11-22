meta:
  id: config_rule_limit_frame
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - config_audio_event_culling_rule_base
seq:
  - id: base
    type: config_audio_event_culling_rule_base
  - id: bit_field
    type: u1
  - id: limit_frame
    type: aux_types::vlq_base128_le_s
    if: has_field_limit_frame
instances:
  has_field_limit_frame: # Field №0
    value: (bit_field & 0b1) != 0
