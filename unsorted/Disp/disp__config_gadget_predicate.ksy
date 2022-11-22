types:
  disp__config_gadget_predicate:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_gadget_predicate
            1: config_predicate_by_time
            2: config_predicate_by_platform
            3: config_predicate_by_interact
            _: aux_types::error
