types:
  disp__debug_blletin_info:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: debug_blletin_info
            1: debug_board_info
            _: aux_types::error
