types:
  dict_of__enum__config_ai_combat_phase_array_of__aux_types__vlq_base128_le_s__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__config_ai_combat_phase_array_of__aux_types__vlq_base128_le_s__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__config_ai_combat_phase_array_of__aux_types__vlq_base128_le_s__length_u:
    seq:
      - id: key
        type: enum__config_ai_combat_phase
      - id: value
        type: array_of__aux_types__vlq_base128_le_s__length_u
