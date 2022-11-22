types:
  config_platform_ui_action:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: paths
        type: array_of__aux_types__string__length_u
        if: has_field_paths
      - id: indent
        type: f4
        if: has_field_indent
      - id: scale
        type: f4
        if: has_field_scale
      - id: top
        type: f4
        if: has_field_top
      - id: bottom
        type: f4
        if: has_field_bottom
      - id: left
        type: f4
        if: has_field_left
      - id: right
        type: f4
        if: has_field_right
      - id: posx
        type: f4
        if: has_field_posx
      - id: posy
        type: f4
        if: has_field_posy
      - id: active
        type: aux_types::vlq_base128_le_s
        if: has_field_active
      - id: first_active
        type: aux_types::vlq_base128_le_s
        if: has_field_first_active
      - id: animation
        type: aux_types::string
        if: has_field_animation
    instances:
      has_field_paths: # Field №0
        value: (bit_field.value & 00001) != 0
      has_field_indent: # Field №1
        value: (bit_field.value & 00010) != 0
      has_field_scale: # Field №2
        value: (bit_field.value & 00100) != 0
      has_field_top: # Field №3
        value: (bit_field.value & 01000) != 0
      has_field_bottom: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_left: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_right: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_posx: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_posy: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_active: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_first_active: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_animation: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
