meta:
  id: disp__config_audio_event_culling_rule_base
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - config_audio_event_culling_rule_base
    - config_rule_culling_distance
    - config_rule_wait_distance
    - config_rule_limit_frame_global
    - config_rule_limit_frame
    - config_rule_culling_event_name_contain
    - config_rule_culling_event
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_audio_event_culling_rule_base
        1: config_rule_culling_distance
        2: config_rule_wait_distance
        3: config_rule_limit_frame_global
        4: config_rule_limit_frame
        5: config_rule_culling_event_name_contain
        6: config_rule_culling_event
        _: aux_types::error
