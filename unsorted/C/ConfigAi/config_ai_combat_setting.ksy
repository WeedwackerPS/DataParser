types:
  config_ai_combat_setting:
    seq:
      - id: bit_field
        type: u1
      - id: combat_phases
        type: dict_of__enum__config_ai_combat_phase_array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_combat_phases
      - id: combat_role
        type: enum__config_ai_combat_role
        if: has_field_combat_role
      - id: broadcast_fear_on_death
        type: u1
        if: has_field_broadcast_fear_on_death
    instances:
      has_field_combat_phases: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_combat_role: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_broadcast_fear_on_death: # Field №2
        value: (bit_field & 0b100) != 0
