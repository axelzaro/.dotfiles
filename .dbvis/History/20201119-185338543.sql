SELECT

cast((xpath('//configuration/branches/branchRemovalCleanUpEnabled/text()',cast(BD.XML_DEFINITION_DATA AS XML))) AS TEXT) test,
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