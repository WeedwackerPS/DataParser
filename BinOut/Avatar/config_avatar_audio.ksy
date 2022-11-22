meta:
  id: config_avatar_audio
  endian: le
  license: GPLv2
  imports:
    - ../Common/ConfigEntity/config_character_audio
    - ../Common/ConfigEntity/array_of__config_state_audio_event__length_u
    - ../Common/config_wwise_string
seq:
  - id: base
    type: config_character_audio
  - id: bit_field
    type: u1
  - id: move_state_audio
    type: config_move_state_audio
    if: has_field_move_state_audio
  - id: combat_speech
    type: config_combat_speech
    if: has_field_combat_speech
  - id: voice_switch
    type: config_wwise_string
    if: has_field_voice_switch
  - id: body_type_switch
    type: config_wwise_string
    if: has_field_body_type_switch
  - id: listener_liftup
    type: f4
    if: has_field_listener_liftup
  - id: surface_prober_liftup
    type: f4
    if: has_field_surface_prober_liftup
instances:
  has_field_move_state_audio: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_combat_speech: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_voice_switch: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_body_type_switch: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_listener_liftup: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_surface_prober_liftup: # Field №5
    value: (bit_field & 0b100000) != 0
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
types:
  config_combat_speech:
    seq:
      - id: bit_field
        type: u1
      - id: head_shot_speech_event
        type: config_wwise_string
        if: has_field_head_shot_speech_event
    instances:
      has_field_head_shot_speech_event: # Field №0
        value: (bit_field & 0b1) != 0
  config_move_state_audio:
    seq:
      - id: bit_field
        type: u1
      - id: on_state_begin
        type: array_of__config_state_audio_event__length_u
        if: has_field_on_state_begin
      - id: on_state_end
        type: array_of__config_state_audio_event__length_u
        if: has_field_on_state_end
    instances:
      has_field_on_state_begin: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_on_state_end: # Field №1
        value: (bit_field & 0b10) != 0
