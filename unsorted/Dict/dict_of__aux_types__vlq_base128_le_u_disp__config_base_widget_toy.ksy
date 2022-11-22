types:
  dict_of__aux_types__vlq_base128_le_u_disp__config_base_widget_toy:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_disp__config_base_widget_toy
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_disp__config_base_widget_toy:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: disp__config_base_widget_toy
