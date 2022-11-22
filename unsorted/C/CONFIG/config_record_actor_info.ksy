types:
  config_record_actor_info:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: prefab_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_prefab_hash
      - id: serial_id
        type: aux_types::vlq_base128_le_u
        if: has_field_serial_id
      - id: actor_type
        type: enum__record_actor_type
        if: has_field_actor_type
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_prefab_hash: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_serial_id: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_actor_type: # Field №3
        value: (bit_field & 0b1000) != 0
