SELECT
    A.queue_id agentID,
    A.agent_type,
    A.title,
    A.agent_description,
    C.key_identifier,
    C.value
FROM
    queue A
JOIN
    capability C
ON
    A.capability_set = C.capability_set