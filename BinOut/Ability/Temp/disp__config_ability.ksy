meta:
  id: disp__config_ability
  endian: le
  license: GLP
  imports:
    - config_ability
    - config_dummy_ability
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_ability
        1: config_dummy_ability
        _: aux_types::error
