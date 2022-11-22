types:
  audio_setting_slider_post_voice_item:
    seq:
      - id: bit_field
        type: u1
      - id: voice_trigger_identity
        type: voice_trigger_identity
        if: has_field_voice_trigger_identity
      - id: repeat_count
        type: aux_types::vlq_base128_le_u
        if: has_field_repeat_count
    instances:
      has_field_voice_trigger_identity: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_repeat_count: # Field №1
        value: (bit_field & 0b10) != 0
