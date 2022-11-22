types:
  config_monster:
    seq:
      - id: base
        type: config_character
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: initial_poses
        type: dict_of__aux_types__string_config_monster_initial_pose
        if: has_field_initial_poses
      - id: aibeta
        type: config_ai_beta
        if: has_field_aibeta
      - id: input_keys
        type: array_of__config_key_input__length_u
        if: has_field_input_keys
      - id: move
        type: disp__config_move
        if: has_field_move
      - id: audio
        type: config_monster_audio
        if: has_field_audio
      - id: emoji_bubble
        type: config_emoji_bubble
        if: has_field_emoji_bubble
      - id: character_rendering
        type: config_character_rendering
        if: has_field_character_rendering
      - id: animal
        type: config_animal
        if: has_field_animal
      - id: camera_adjust
        type: disp__config_special_camera
        if: has_field_camera_adjust
      - id: field
        type: config_trigger
        if: has_field_field
    instances:
      has_field_initial_poses: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_aibeta: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_input_keys: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_move: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_audio: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_emoji_bubble: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_character_rendering: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_animal: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_camera_adjust: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_field: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
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
