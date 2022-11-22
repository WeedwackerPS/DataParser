types:
  config_resonance_cut_scene_map:
    seq:
      - id: bit_field
        type: u1
      - id: cutscene_map
        type: dict_of__enum__element_type_config_resonance_cut_scene
        if: has_field_cutscene_map
    instances:
      has_field_cutscene_map: # Field №0
        value: (bit_field & 0b1) != 0
