-record('v1_0.header', {durable, priority, ttl, first_acquirer, delivery_count}).
-define(V_1_0_SYMBOL_HEADER, {symbol, <<"amqp:header:list">>}).
-record('v1_0.delivery_annotations', {content}).
-define(V_1_0_SYMBOL_DELIVERY_ANNOTATIONS, {symbol, <<"amqp:delivery-annotations:map">>}).
-record('v1_0.message_annotations', {content}).
-define(V_1_0_SYMBOL_MESSAGE_ANNOTATIONS, {symbol, <<"amqp:message-annotations:map">>}).
-record('v1_0.properties', {message_id, user_id, to, subject, reply_to, correlation_id, content_type, content_encoding, absolute_expiry_time, creation_time, group_id, group_sequence, reply_to_group_id}).
-define(V_1_0_SYMBOL_PROPERTIES, {symbol, <<"amqp:properties:list">>}).
-record('v1_0.application_properties', {content}).
-define(V_1_0_SYMBOL_APPLICATION_PROPERTIES, {symbol, <<"amqp:application-properties:map">>}).
-record('v1_0.data', {content}).
-define(V_1_0_SYMBOL_DATA, {symbol, <<"amqp:data:binary">>}).
-record('v1_0.amqp_sequence', {content}).
-define(V_1_0_SYMBOL_AMQP_SEQUENCE, {symbol, <<"amqp:amqp-sequence:list">>}).
-record('v1_0.amqp_value', {content}).
-define(V_1_0_SYMBOL_AMQP_VALUE, {symbol, <<"amqp:amqp-value:*">>}).
-record('v1_0.footer', {content}).
-define(V_1_0_SYMBOL_FOOTER, {symbol, <<"amqp:footer:map">>}).
-record('v1_0.received', {section_number, section_offset}).
-define(V_1_0_SYMBOL_RECEIVED, {symbol, <<"amqp:received:list">>}).
-record('v1_0.accepted', {}).
-define(V_1_0_SYMBOL_ACCEPTED, {symbol, <<"amqp:accepted:list">>}).
-record('v1_0.rejected', {error}).
-define(V_1_0_SYMBOL_REJECTED, {symbol, <<"amqp:rejected:list">>}).
-record('v1_0.released', {}).
-define(V_1_0_SYMBOL_RELEASED, {symbol, <<"amqp:released:list">>}).
-record('v1_0.modified', {delivery_failed, undeliverable_here, message_annotations}).
-define(V_1_0_SYMBOL_MODIFIED, {symbol, <<"amqp:modified:list">>}).
-record('v1_0.source', {address, durable, expiry_policy, timeout, dynamic, dynamic_node_properties, distribution_mode, filter, default_outcome, outcomes, capabilities}).
-define(V_1_0_SYMBOL_SOURCE, {symbol, <<"amqp:source:list">>}).
-record('v1_0.target', {address, durable, expiry_policy, timeout, dynamic, dynamic_node_properties, capabilities}).
-define(V_1_0_SYMBOL_TARGET, {symbol, <<"amqp:target:list">>}).
-record('v1_0.delete_on_close', {}).
-define(V_1_0_SYMBOL_DELETE_ON_CLOSE, {symbol, <<"amqp:delete-on-close:list">>}).
-record('v1_0.delete_on_no_links', {}).
-define(V_1_0_SYMBOL_DELETE_ON_NO_LINKS, {symbol, <<"amqp:delete-on-no-links:list">>}).
-record('v1_0.delete_on_no_messages', {}).
-define(V_1_0_SYMBOL_DELETE_ON_NO_MESSAGES, {symbol, <<"amqp:delete-on-no-messages:list">>}).
-record('v1_0.delete_on_no_links_or_messages', {}).
-define(V_1_0_SYMBOL_DELETE_ON_NO_LINKS_OR_MESSAGES, {symbol, <<"amqp:delete-on-no-links-or-messages:list">>}).
-record('v1_0.sasl_mechanisms', {sasl_server_mechanisms}).
-define(V_1_0_SYMBOL_SASL_MECHANISMS, {symbol, <<"amqp:sasl-mechanisms:list">>}).
-record('v1_0.sasl_init', {mechanism, initial_response, hostname}).
-define(V_1_0_SYMBOL_SASL_INIT, {symbol, <<"amqp:sasl-init:list">>}).
-record('v1_0.sasl_challenge', {challenge}).
-define(V_1_0_SYMBOL_SASL_CHALLENGE, {symbol, <<"amqp:sasl-challenge:list">>}).
-record('v1_0.sasl_response', {response}).
-define(V_1_0_SYMBOL_SASL_RESPONSE, {symbol, <<"amqp:sasl-response:list">>}).
-record('v1_0.sasl_outcome', {code, additional_data}).
-define(V_1_0_SYMBOL_SASL_OUTCOME, {symbol, <<"amqp:sasl-outcome:list">>}).
-record('v1_0.open', {container_id, hostname, max_frame_size, channel_max, idle_time_out, outgoing_locales, incoming_locales, offered_capabilities, desired_capabilities, properties}).
-define(V_1_0_SYMBOL_OPEN, {symbol, <<"amqp:open:list">>}).
-record('v1_0.begin', {remote_channel, next_outgoing_id, incoming_window, outgoing_window, handle_max, offered_capabilities, desired_capabilities, properties}).
-define(V_1_0_SYMBOL_BEGIN, {symbol, <<"amqp:begin:list">>}).
-record('v1_0.attach', {name, handle, role, snd_settle_mode, rcv_settle_mode, source, target, unsettled, incomplete_unsettled, initial_delivery_count, max_message_size, offered_capabilities, desired_capabilities, properties}).
-define(V_1_0_SYMBOL_ATTACH, {symbol, <<"amqp:attach:list">>}).
-record('v1_0.flow', {next_incoming_id, incoming_window, next_outgoing_id, outgoing_window, handle, delivery_count, link_credit, available, drain, echo, properties}).
-define(V_1_0_SYMBOL_FLOW, {symbol, <<"amqp:flow:list">>}).
-record('v1_0.transfer', {handle, delivery_id, delivery_tag, message_format, settled, more, rcv_settle_mode, state, resume, aborted, batchable}).
-define(V_1_0_SYMBOL_TRANSFER, {symbol, <<"amqp:transfer:list">>}).
-record('v1_0.disposition', {role, first, last, settled, state, batchable}).
-define(V_1_0_SYMBOL_DISPOSITION, {symbol, <<"amqp:disposition:list">>}).
-record('v1_0.detach', {handle, closed, error}).
-define(V_1_0_SYMBOL_DETACH, {symbol, <<"amqp:detach:list">>}).
-record('v1_0.end', {error}).
-define(V_1_0_SYMBOL_END, {symbol, <<"amqp:end:list">>}).
-record('v1_0.close', {error}).
-define(V_1_0_SYMBOL_CLOSE, {symbol, <<"amqp:close:list">>}).
-record('v1_0.error', {condition, description, info}).
-define(V_1_0_SYMBOL_ERROR, {symbol, <<"amqp:error:list">>}).
-record('v1_0.coordinator', {capabilities}).
-define(V_1_0_SYMBOL_COORDINATOR, {symbol, <<"amqp:coordinator:list">>}).
-record('v1_0.declare', {global_id}).
-define(V_1_0_SYMBOL_DECLARE, {symbol, <<"amqp:declare:list">>}).
-record('v1_0.discharge', {txn_id, fail}).
-define(V_1_0_SYMBOL_DISCHARGE, {symbol, <<"amqp:discharge:list">>}).
-record('v1_0.declared', {txn_id}).
-define(V_1_0_SYMBOL_DECLARED, {symbol, <<"amqp:declared:list">>}).
-record('v1_0.transactional_state', {txn_id, outcome}).
-define(V_1_0_SYMBOL_TRANSACTIONAL_STATE, {symbol, <<"amqp:transactional-state:list">>}).
 % terminus_durability
-define(V_1_0_TERMINUS_DURABILITY_NONE, {uint, 0}).
-define(V_1_0_TERMINUS_DURABILITY_CONFIGURATION, {uint, 1}).
-define(V_1_0_TERMINUS_DURABILITY_UNSETTLED_STATE, {uint, 2}).
 % terminus_expiry_policy
-define(V_1_0_TERMINUS_EXPIRY_POLICY_LINK_DETACH, {symbol, <<"link-detach">>}).
-define(V_1_0_TERMINUS_EXPIRY_POLICY_SESSION_END, {symbol, <<"session-end">>}).
-define(V_1_0_TERMINUS_EXPIRY_POLICY_CONNECTION_CLOSE, {symbol, <<"connection-close">>}).
-define(V_1_0_TERMINUS_EXPIRY_POLICY_NEVER, {symbol, <<"never">>}).
 % std_dist_mode
-define(V_1_0_STD_DIST_MODE_MOVE, {symbol, <<"move">>}).
-define(V_1_0_STD_DIST_MODE_COPY, {symbol, <<"copy">>}).
 % sasl_code
-define(V_1_0_SASL_CODE_OK, {ubyte, 0}).
-define(V_1_0_SASL_CODE_AUTH, {ubyte, 1}).
-define(V_1_0_SASL_CODE_SYS, {ubyte, 2}).
-define(V_1_0_SASL_CODE_SYS_PERM, {ubyte, 3}).
-define(V_1_0_SASL_CODE_SYS_TEMP, {ubyte, 4}).
 % role
-define(V_1_0_ROLE_SENDER, {boolean, false}).
-define(V_1_0_ROLE_RECEIVER, {boolean, true}).
 % sender_settle_mode
-define(V_1_0_SENDER_SETTLE_MODE_UNSETTLED, {ubyte, 0}).
-define(V_1_0_SENDER_SETTLE_MODE_SETTLED, {ubyte, 1}).
-define(V_1_0_SENDER_SETTLE_MODE_MIXED, {ubyte, 2}).
 % receiver_settle_mode
-define(V_1_0_RECEIVER_SETTLE_MODE_FIRST, {ubyte, 0}).
-define(V_1_0_RECEIVER_SETTLE_MODE_SECOND, {ubyte, 1}).
 % amqp_error
-define(V_1_0_AMQP_ERROR_INTERNAL_ERROR, {symbol, <<"amqp:internal-error">>}).
-define(V_1_0_AMQP_ERROR_NOT_FOUND, {symbol, <<"amqp:not-found">>}).
-define(V_1_0_AMQP_ERROR_UNAUTHORIZED_ACCESS, {symbol, <<"amqp:unauthorized-access">>}).
-define(V_1_0_AMQP_ERROR_DECODE_ERROR, {symbol, <<"amqp:decode-error">>}).
-define(V_1_0_AMQP_ERROR_RESOURCE_LIMIT_EXCEEDED, {symbol, <<"amqp:resource-limit-exceeded">>}).
-define(V_1_0_AMQP_ERROR_NOT_ALLOWED, {symbol, <<"amqp:not-allowed">>}).
-define(V_1_0_AMQP_ERROR_INVALID_FIELD, {symbol, <<"amqp:invalid-field">>}).
-define(V_1_0_AMQP_ERROR_NOT_IMPLEMENTED, {symbol, <<"amqp:not-implemented">>}).
-define(V_1_0_AMQP_ERROR_RESOURCE_LOCKED, {symbol, <<"amqp:resource-locked">>}).
-define(V_1_0_AMQP_ERROR_PRECONDITION_FAILED, {symbol, <<"amqp:precondition-failed">>}).
-define(V_1_0_AMQP_ERROR_RESOURCE_DELETED, {symbol, <<"amqp:resource-deleted">>}).
-define(V_1_0_AMQP_ERROR_ILLEGAL_STATE, {symbol, <<"amqp:illegal-state">>}).
-define(V_1_0_AMQP_ERROR_FRAME_SIZE_TOO_SMALL, {symbol, <<"amqp:frame-size-too-small">>}).
 % connection_error
-define(V_1_0_CONNECTION_ERROR_CONNECTION_FORCED, {symbol, <<"amqp:connection:forced">>}).
-define(V_1_0_CONNECTION_ERROR_FRAMING_ERROR, {symbol, <<"amqp:connection:framing-error">>}).
-define(V_1_0_CONNECTION_ERROR_REDIRECT, {symbol, <<"amqp:connection:redirect">>}).
 % session_error
-define(V_1_0_SESSION_ERROR_WINDOW_VIOLATION, {symbol, <<"amqp:session:window-violation">>}).
-define(V_1_0_SESSION_ERROR_ERRANT_LINK, {symbol, <<"amqp:session:errant-link">>}).
-define(V_1_0_SESSION_ERROR_HANDLE_IN_USE, {symbol, <<"amqp:session:handle-in-use">>}).
-define(V_1_0_SESSION_ERROR_UNATTACHED_HANDLE, {symbol, <<"amqp:session:unattached-handle">>}).
 % link_error
-define(V_1_0_LINK_ERROR_DETACH_FORCED, {symbol, <<"amqp:link:detach-forced">>}).
-define(V_1_0_LINK_ERROR_TRANSFER_LIMIT_EXCEEDED, {symbol, <<"amqp:link:transfer-limit-exceeded">>}).
-define(V_1_0_LINK_ERROR_MESSAGE_SIZE_EXCEEDED, {symbol, <<"amqp:link:message-size-exceeded">>}).
-define(V_1_0_LINK_ERROR_REDIRECT, {symbol, <<"amqp:link:redirect">>}).
-define(V_1_0_LINK_ERROR_STOLEN, {symbol, <<"amqp:link:stolen">>}).
 % txn_capability
-define(V_1_0_TXN_CAPABILITY_LOCAL_TRANSACTIONS, {symbol, <<"amqp:local-transactions">>}).
-define(V_1_0_TXN_CAPABILITY_DISTRIBUTED_TRANSACTIONS, {symbol, <<"amqp:distributed-transactions">>}).
-define(V_1_0_TXN_CAPABILITY_PROMOTABLE_TRANSACTIONS, {symbol, <<"amqp:promotable-transactions">>}).
-define(V_1_0_TXN_CAPABILITY_MULTI_TXNS_PER_SSN, {symbol, <<"amqp:multi-txns-per-ssn">>}).
-define(V_1_0_TXN_CAPABILITY_MULTI_SSNS_PER_TXN, {symbol, <<"amqp:multi-ssns-per-txn">>}).
 % transaction_error
-define(V_1_0_TRANSACTION_ERROR_UNKNOWN_ID, {symbol, <<"amqp:transaction:unknown-id">>}).
-define(V_1_0_TRANSACTION_ERROR_TRANSACTION_ROLLBACK, {symbol, <<"amqp:transaction:rollback">>}).
-define(V_1_0_TRANSACTION_ERROR_TRANSACTION_TIMEOUT, {symbol, <<"amqp:transaction:timeout">>}).

-define(DESCRIBED, 0).

