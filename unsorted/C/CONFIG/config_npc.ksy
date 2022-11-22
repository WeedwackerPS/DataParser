types:
  config_npc:
    seq:
      - id: base
        type: config_character
      - id: bit_field
        type: u1
      - id: default_dither
        type: f4
        if: has_field_default_dither
      - id: disappear_duration
        type: f4
        if: has_field_disappear_duration
      - id: aibeta
        type: config_ai_beta
        if: has_field_aibeta
      - id: move
        type: disp__config_move
        if: has_field_move
      - id: intee
        type: config_intee
        if: has_field_intee
      - id: audio
        type: disp__config_entity_audio
        if: has_field_audio
      - id: emoji_bubble
        type: config_emoji_bubble
        if: has_field_emoji_bubble
    instances:
      has_field_default_dither: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_disappear_duration: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_aibeta: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_move: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_intee: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_audio: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_emoji_bubble: # Field №6
        value: (bit_field & 0b1000000) != 0
      # Base class fields
      combat:
        value: base.combat
      equip_controller:
        value: base.equip_controller
      abilities:
        value: base.abilities
      state_layers:
        value: base.state_layers
      face:
        value: base.face
      part_control:
        value: base.part_control
      billboard:
        value: base.billboard
      bind_emotions:
        value: base.bind_emotions
      common:
        value: base.common
      head_control:
        value: base.head_control
      special_point:
        value: base.special_point
      custom_attack_shape:
        value: base.custom_attack_shape
      model:
        value: base.model
      dither:
        value: base.dither
      global_value:
        value: base.global_value
      entity_tags:
        value: base.entity_tags
