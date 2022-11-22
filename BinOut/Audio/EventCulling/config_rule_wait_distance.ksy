meta:
  id: config_rule_wait_distance
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
  - id: distance
    type: f4
    if: has_field_distance
  - id: recheck_frame
    type: aux_types::vlq_base128_le_s
    if: has_field_recheck_frame
instances:
  has_field_distance: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_recheck_frame: # Field №1
    value: (bit_field & 0b10) != 0
