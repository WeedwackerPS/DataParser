types:
  config_record_frame:
    seq:
      - id: bit_field
        type: u1
      - id: delta_time
        type: f4
        if: has_field_delta_time
      - id: frame_count
        type: aux_types::vlq_base128_le_u
        if: has_field_frame_count
      - id: actors
        type: array_of__disp__config_record_actor_base__length_u
        if: has_field_actors
    instances:
      has_field_delta_time: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_frame_count: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_actors: # Field №2
        value: (bit_field & 0b100) != 0
