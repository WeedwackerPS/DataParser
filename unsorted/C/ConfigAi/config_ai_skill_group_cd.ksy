types:
  config_ai_skill_group_cd:
    seq:
      - id: bit_field
        type: u1
      - id: skill_group_cdid
        type: aux_types::vlq_base128_le_s
        if: has_field_skill_group_cdid
      - id: skill_group_cd_time
        type: f4
        if: has_field_skill_group_cd_time
    instances:
      has_field_skill_group_cdid: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_skill_group_cd_time: # Field №1
        value: (bit_field & 0b10) != 0
