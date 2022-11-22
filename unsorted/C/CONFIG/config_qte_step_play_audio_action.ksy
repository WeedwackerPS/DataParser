types:
  config_qte_step_play_audio_action:
    seq:
      - id: base
        type: config_qte_step_base_action
      - id: bit_field
        type: u1
      - id: audio_name
        type: aux_types::string
        if: has_field_audio_name
    instances:
      has_field_audio_name: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      action_type:
        value: base.action_type
      duration:
        value: base.duration
