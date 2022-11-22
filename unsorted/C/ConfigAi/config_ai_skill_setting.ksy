types:
  config_ai_skill_setting:
    seq:
      - id: bit_field
        type: u1
      - id: skill_elite_set
        type: dict_of__u1_array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_skill_elite_set
    instances:
      has_field_skill_elite_set: # Field №0
        value: (bit_field & 0b1) != 0
