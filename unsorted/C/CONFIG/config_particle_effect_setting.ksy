types:
  config_particle_effect_setting:
    seq:
      - id: bit_field
        type: u1
      - id: half_resolution_particle
        type: u1
        if: has_field_half_resolution_particle
      - id: particle_emit_level
        type: enum__particle_emit_level_type
        if: has_field_particle_emit_level
      - id: particle_decrease_thresh
        type: f4
        if: has_field_particle_decrease_thresh
    instances:
      has_field_half_resolution_particle: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_particle_emit_level: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_particle_decrease_thresh: # Field №2
        value: (bit_field & 0b100) != 0
