types:
  disp__config_record_actor_base:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_record_actor_base
            1: config_record_entity
            2: config_record_effect
            _: aux_types::error
