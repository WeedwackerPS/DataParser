types:
  quest_guide_ex:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__quest_guide_type
        if: has_field_type
      - id: auto_guide
        type: enum__quest_guide_auto
        if: has_field_auto_guide
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
      - id: guide_scene
        type: aux_types::vlq_base128_le_u
        if: has_field_guide_scene
      - id: guide_style
        type: enum__quest_guide_style
        if: has_field_guide_style
      - id: guide_layer
        type: enum__quest_guide_layer
        if: has_field_guide_layer
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_auto_guide: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_param: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_guide_scene: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_guide_style: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_guide_layer: # Field №5
        value: (bit_field & 0b100000) != 0
