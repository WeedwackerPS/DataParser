types:
  config_audio_index:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: ambience
        type: aux_types::string
        if: has_field_ambience
      - id: avatar
        type: aux_types::string
        if: has_field_avatar
      - id: avatar_move
        type: aux_types::string
        if: has_field_avatar_move
      - id: base_move
        type: aux_types::string
        if: has_field_base_move
      - id: city_blocks
        type: aux_types::string
        if: has_field_city_blocks
      - id: camera
        type: aux_types::string
        if: has_field_camera
      - id: combat
        type: aux_types::string
        if: has_field_combat
      - id: dialog
        type: aux_types::string
        if: has_field_dialog
      - id: element_reactions
        type: aux_types::string
        if: has_field_element_reactions
      - id: gadget
        type: aux_types::string
        if: has_field_gadget
      - id: view_state
        type: aux_types::string
        if: has_field_view_state
      - id: level
        type: aux_types::string
        if: has_field_level
      - id: listener
        type: aux_types::string
        if: has_field_listener
      - id: map_info
        type: aux_types::string
        if: has_field_map_info
      - id: music
        type: aux_types::string
        if: has_field_music
      - id: mutual_exclusions
        type: aux_types::string
        if: has_field_mutual_exclusions
      - id: npc
        type: aux_types::string
        if: has_field_npc
      - id: quest
        type: aux_types::string
        if: has_field_quest
      - id: resource
        type: aux_types::string
        if: has_field_resource
      - id: surface_type
        type: aux_types::string
        if: has_field_surface_type
      - id: ui
        type: aux_types::string
        if: has_field_ui
      - id: weather
        type: aux_types::string
        if: has_field_weather
      - id: speech
        type: aux_types::string
        if: has_field_speech
    instances:
      has_field_ambience: # Field №0
        value: (bit_field.value & 0000000000000001) != 0
      has_field_avatar: # Field №1
        value: (bit_field.value & 0000000000000010) != 0
      has_field_avatar_move: # Field №2
        value: (bit_field.value & 0000000000000100) != 0
      has_field_base_move: # Field №3
        value: (bit_field.value & 0000000000001000) != 0
      has_field_city_blocks: # Field №4
        value: (bit_field.value & 0000000000010000) != 0
      has_field_camera: # Field №5
        value: (bit_field.value & 0000000000100000) != 0
      has_field_combat: # Field №6
        value: (bit_field.value & 0000000001000000) != 0
      has_field_dialog: # Field №7
        value: (bit_field.value & 0000000010000000) != 0
      has_field_element_reactions: # Field №8
        value: (bit_field.value & 0000000100000000) != 0
      has_field_gadget: # Field №9
        value: (bit_field.value & 0000001000000000) != 0
      has_field_view_state: # Field №10
        value: (bit_field.value & 0000010000000000) != 0
      has_field_level: # Field №11
        value: (bit_field.value & 0000100000000000) != 0
      has_field_listener: # Field №12
        value: (bit_field.value & 0001000000000000) != 0
      has_field_map_info: # Field №13
        value: (bit_field.value & 0010000000000000) != 0
      has_field_music: # Field №14
        value: (bit_field.value & 0100000000000000) != 0
      has_field_mutual_exclusions: # Field №15
        value: (bit_field.value & 0b00000001000000000000000) != 0
      has_field_npc: # Field №16
        value: (bit_field.value & 0b00000010000000000000000) != 0
      has_field_quest: # Field №17
        value: (bit_field.value & 0b00000100000000000000000) != 0
      has_field_resource: # Field №18
        value: (bit_field.value & 0b00001000000000000000000) != 0
      has_field_surface_type: # Field №19
        value: (bit_field.value & 0b00010000000000000000000) != 0
      has_field_ui: # Field №20
        value: (bit_field.value & 0b00100000000000000000000) != 0
      has_field_weather: # Field №21
        value: (bit_field.value & 0b01000000000000000000000) != 0
      has_field_speech: # Field №22
        value: (bit_field.value & 0b10000000000000000000000) != 0
