types:
  base_server_buff_config:
    seq:
      - id: bit_field
        type: u1
      - id: server_buff_id
        type: aux_types::vlq_base128_le_u
        if: has_field_server_buff_id
      - id: server_buff_type
        type: enum__server_buff_type
        if: has_field_server_buff_type
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: modifier_name
        type: aux_types::string
        if: has_field_modifier_name
    instances:
      has_field_server_buff_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_server_buff_type: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_ability_name: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_modifier_name: # Field №3
        value: (bit_field & 0b1000) != 0
