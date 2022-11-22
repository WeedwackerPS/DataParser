types:
  config_aits_ability_global_value_setting:
    seq:
      - id: base
        type: config_ai_threat_score_base_setting
      - id: bit_field
        type: u1
      - id: cared_global_value_name
        type: aux_types::string
        if: has_field_cared_global_value_name
    instances:
      has_field_cared_global_value_name: # Field №0
        value: (bit_field & 0b1) != 0
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
