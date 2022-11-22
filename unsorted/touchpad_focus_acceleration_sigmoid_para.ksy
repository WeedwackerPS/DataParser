types:
  touchpad_focus_acceleration_sigmoid_para:
    seq:
      - id: bit_field
        type: u1
      - id: phase
        type: f4
        if: has_field_phase
      - id: slope
        type: f4
        if: has_field_slope
      - id: amplitude
        type: f4
        if: has_field_amplitude
      - id: clip
        type: f4
        if: has_field_clip
    instances:
      has_field_phase: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_slope: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_amplitude: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_clip: # Field №3
        value: (bit_field & 0b1000) != 0
