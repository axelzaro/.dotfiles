SELECT
    CAST((xpath('//configuration/branches/branchRemovalCleanUpEnabled/text()',CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) branchRemovalCleanUpEnabled,
    CAST((xpath('//configuration/branches/removalCleanupPeriodInDays/text()',CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) removalCleanupPeriodInDays,
    CAST((xpath('//configuration/branches/inactiveBranchCleanupEnabled/text()',CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) inactiveBranchCleanupEnabled,
    CAST((xpath('//configuration/branches/inactivityInDays/text()',CAST(BD.XML_DEFINITION_DATA AS
    XML))) AS TEXT) inactivityInDays,
    B.build_type,
    B.buildkey,
    BD.*
FROM
    BUILD B
JOIN
    build_definition BD
ON
    B.build_id = BD.build_id
WHERE
    B.build_type = 'CHAIN'