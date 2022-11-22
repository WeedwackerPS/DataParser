types:
  disp__config_dialog_group:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_dialog_group
            1: config_free_dialog_group
            2: config_narrator_dialog_group
            3: config_blossom_dialog_group
            4: config_activity_dialog_group
            5: config_coop_dialog_group
            6: config_gadget_dialog_group
            _: aux_types::error
