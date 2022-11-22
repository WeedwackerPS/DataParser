types:
  config_resonance_cut_scene:
    seq:
      - id: bit_field
        type: u1
      - id: cutscene_index
        type: aux_types::vlq_base128_le_u
        if: has_field_cutscene_index
      - id: vfx_ability
        type: aux_types::string
        if: has_field_vfx_ability
    instances:
      has_field_cutscene_index: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_vfx_ability: # Field №1
        value: (bit_field & 0b10) != 0
