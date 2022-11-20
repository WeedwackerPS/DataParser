meta:
  id: trigger_audio
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__op_responder
    - ../../../../aux_types
    - Common/config_audio_operation
    - Common/config_audio_event_op
    - Common/config_audio_emitter_op
    - Common/config_audio_positioned_op
    - Common/config_audio_positioned_event_op
    - Common/config_audio_positioned_emitter_op
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: responder
    type: enum__op_responder
    if: has_field_responder
  - id: operation
    type: disp__config_audio_operation
    if: has_field_operation
instances:
  has_field_responder: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_operation: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
types:
  disp__config_audio_operation:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_audio_operation
            1: config_audio_event_op
            2: config_audio_emitter_op
            3: config_audio_positioned_op
            4: config_audio_positioned_event_op
            5: config_audio_positioned_emitter_op
            _: aux_types::error
