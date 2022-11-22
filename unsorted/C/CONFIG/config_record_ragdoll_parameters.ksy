types:
  config_record_ragdoll_parameters:
    seq:
      - id: bit_field
        type: u1
      - id: prefab_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_prefab_hash
      - id: velocity_on_root
        type: vector
        if: has_field_velocity_on_root
      - id: explosion_force
        type: vector
        if: has_field_explosion_force
    instances:
      has_field_prefab_hash: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_velocity_on_root: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_explosion_force: # Field №2
        value: (bit_field & 0b100) != 0
