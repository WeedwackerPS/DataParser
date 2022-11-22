types:
  config_aits_target_distance_setting:
    seq:
      - id: base
        type: config_ai_threat_score_base_setting
    instances:
      # Base class fields
      enable:
        value: base.enable
      weight:
        value: base.weight
      value:
        value: base.value
      min:
        value: base.min
      max:
        value: base.max
      compare_operation:
        value: base.compare_operation
