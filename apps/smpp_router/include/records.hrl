-record(
	link,
	{
		id,
		connection_data,
		type :: 'in' | 'out',
		log_level :: 'error'|'info'|'debug'
	}
).

-record(
	connection_data,
	{
		ip :: tuple(),
		port :: pos_integer(),
		system_id :: list(),
		password :: list(),
		bind_type::'undefined'|'transmitter'|'transceiver'|'receiver'
		%% here could be other options such as destination address ton npi etc
	}
).

-record(
	connection_state,
	{
		bind_type :: 'undefined'|'transmitter'|'transceiver'|'receiver',
		sessions, 
		submit_sm_count,
		deliver_sm_count,
		active :: 'true' | 'false',
		link,
		logger,
		rules
	}
).

-record(
	rule,
	{
	 	id,
		in_id,
		type,
		out_id,
		action :: 'pass' | 'drop'
	}
).

-record(
	message,
	{
		id,
		source_link_id,
		target_link_id
	}
).
