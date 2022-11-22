types:
  config_vehicle_audio:
    seq:
      - id: base
        type: config_gadget_audio
      - id: bit_field
        type: u1
      - id: collision_event
        type: config_wwise_string
        if: has_field_collision_event
      - id: max_velocity
        type: f4
        if: has_field_max_velocity
      - id: collision_audio_trigger_cooldown
        type: aux_types::vlq_base128_le_u
        if: has_field_collision_audio_trigger_cooldown
      - id: collision_audio_trigger_threshold
        type: f4
        if: has_field_collision_audio_trigger_threshold
    instances:
      has_field_collision_event: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_max_velocity: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_collision_audio_trigger_cooldown: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_collision_audio_trigger_threshold: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      triggers_speech:
        value: base.triggers_speech
      anim_audio:
        value: base.anim_audio
      init_event:
        value: base.init_event
      enable_event:
        value: base.enable_event
      disable_event:
        value: base.disable_event
      destroy_event:
        value: base.destroy_event
