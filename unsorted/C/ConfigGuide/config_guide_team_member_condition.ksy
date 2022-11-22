types:
  config_guide_team_member_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: has_member
        type: u1
        if: has_field_has_member
    instances:
      has_field_config_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_has_member: # Field №1
        value: (bit_field & 0b10) != 0
