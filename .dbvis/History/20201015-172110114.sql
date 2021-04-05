SELECT
    QUEUE_ID,
    AGENT_TYPE,
    TITLE,
    ENABLED,
    ASSIGNED.*
FROM
    AGENT_ASSIGNMENT AS ASSIGNED
JOIN
    QUEUE AS AGENT
ON
    ASSIGNED.EXECUTOR_ID = AGENT.QUEUE_ID;