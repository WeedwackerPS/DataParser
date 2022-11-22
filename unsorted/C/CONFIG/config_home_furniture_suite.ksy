types:
  config_home_furniture_suite:
    seq:
      - id: bit_field
        type: u1
      - id: suite_id
        type: aux_types::vlq_base128_le_u
        if: has_field_suite_id
      - id: spawn_pos
        type: vector
        if: has_field_spawn_pos
      - id: included_furniture_index_list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_included_furniture_index_list
    instances:
      has_field_suite_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_spawn_pos: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_included_furniture_index_list: # Field №2
        value: (bit_field & 0b100) != 0
