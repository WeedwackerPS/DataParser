meta:
  id: config_rule_culling_event_name_contain
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
  - id: pattern
    type: aux_types::string
    if: has_field_pattern
instances:
  has_field_pattern: # Field №0
    value: (bit_field & 0b1) != 0
