meta:
  id: attach_to_animator_state_id_mixin
  endian: le
  license: GPLv2
  imports:
    - ../attach_to_state_id_mixin
seq:
  - id: base
    type: attach_to_state_id_mixin
instances:
  # Base class fields
  state_i_ds:
    value: base.state_i_ds
  modifier_name:
    value: base.modifier_name
  target:
    value: base.target
  predicates:
    value: base.predicates
  is_check_on_attach:
    value: base.is_check_on_attach
  is_unique:
    value: base.is_unique
