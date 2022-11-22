types:
  config_hdr_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: max_luminosity
        type: f4
        if: has_field_max_luminosity
      - id: min_max_luminosity
        type: f4
        if: has_field_min_max_luminosity
      - id: max_max_luminosity
        type: f4
        if: has_field_max_max_luminosity
      - id: step_max_luminosity
        type: f4
        if: has_field_step_max_luminosity
      - id: ui_paper_white
        type: f4
        if: has_field_ui_paper_white
      - id: min_ui_paper_white
        type: f4
        if: has_field_min_ui_paper_white
      - id: max_ui_paper_white
        type: f4
        if: has_field_max_ui_paper_white
      - id: step_ui_paper_white
        type: f4
        if: has_field_step_ui_paper_white
      - id: scene_paper_white
        type: f4
        if: has_field_scene_paper_white
      - id: min_scene_paper_white
        type: f4
        if: has_field_min_scene_paper_white
      - id: max_scene_paper_white
        type: f4
        if: has_field_max_scene_paper_white
      - id: step_scene_paper_white
        type: f4
        if: has_field_step_scene_paper_white
    instances:
      has_field_max_luminosity: # Field №0
        value: (bit_field.value & 00001) != 0
      has_field_min_max_luminosity: # Field №1
        value: (bit_field.value & 00010) != 0
      has_field_max_max_luminosity: # Field №2
        value: (bit_field.value & 00100) != 0
      has_field_step_max_luminosity: # Field №3
        value: (bit_field.value & 01000) != 0
      has_field_ui_paper_white: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_min_ui_paper_white: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_max_ui_paper_white: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_step_ui_paper_white: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_scene_paper_white: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_min_scene_paper_white: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_max_scene_paper_white: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_step_scene_paper_white: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
