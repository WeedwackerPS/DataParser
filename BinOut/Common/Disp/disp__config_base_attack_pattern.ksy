meta:
  id: disp__config_base_attack_pattern
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - ../ConfigAttack/config_base_attack_pattern
    - ../ConfigAttack/config_simple_attack_pattern
    - ../ConfigAttack/config_attack_use_prefab
    - ../ConfigAttack/config_attack_trail
    - ../ConfigAttack/config_attack_box
    - ../ConfigAttack/config_attack_circle
    - ../ConfigAttack/config_attack_sphere
    - ../ConfigAttack/config_attack_double_trail
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_base_attack_pattern
        1: config_simple_attack_pattern
        2: config_attack_use_prefab
        3: config_attack_trail
        4: config_attack_box
        5: config_attack_circle
        6: config_attack_sphere
        7: config_attack_double_trail
        _: aux_types::error
