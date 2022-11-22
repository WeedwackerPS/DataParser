types:
  config_guide_task:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: is_freshman_guide
        type: u1
        if: has_field_is_freshman_guide
      - id: predicates
        type: array_of__disp__config_base_guide__length_u
        if: has_field_predicates
      - id: on_check
        type: array_of__disp__config_base_guide__length_u
        if: has_field_on_check
      - id: on_guide
        type: array_of__disp__config_base_guide__length_u
        if: has_field_on_guide
      - id: finish_condition
        type: array_of__array_of__disp__config_base_guide__length_u__length_u
        if: has_field_finish_condition
      - id: on_finish
        type: array_of__disp__config_base_guide__length_u
        if: has_field_on_finish
      - id: on_quit
        type: array_of__disp__config_base_guide__length_u
        if: has_field_on_quit
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_is_freshman_guide: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_predicates: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_on_check: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_on_guide: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_finish_condition: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_on_finish: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_on_quit: # Field №7
        value: (bit_field & 0b10000000) != 0
