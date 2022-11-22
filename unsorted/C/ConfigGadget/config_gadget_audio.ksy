types:
  config_gadget_audio:
    seq:
      - id: base
        type: config_entity_audio
      - id: bit_field
        type: u1
      - id: triggers_speech
        type: u1
        if: has_field_triggers_speech
    instances:
      has_field_triggers_speech: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
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
