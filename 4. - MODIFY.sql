-- If a members last name ends in -in change the residence to Moscow:
UPDATE Members
SET ResidenceCityId = (SELECT c.Id FROM Cities c WHERE c.Name = 'Moscow')
WHERE LastName LIKE '%in'

-- Delete members older than 25 years:
-- Does not work. Violates foreign key constraint; would have to delete all linked foreign keys first.
DELETE FROM Members
WHERE DATE_PART('year', NOW()) - DATE_PART('year', Members.DateOfBirth) > 25

-- Kick all interns whose grade average for a given field is less than 2.4:
--UPDATE InternsFieldsInternships
--SET Status = 'Kicked'
--WHERE InternId IN (
--	SELECT ifi.InternId FROM InternsFieldsInternships ifi
--	JOIN Interns i ON ifi.InternId = i.Id
--	JOIN InternsAssignments iass ON iass.InternId = i.Id
--);
		 
--UPDATE InternsFieldsInternships
--SET Status = 'Kicked'
--WHERE (
--	SELECT AVG(iass.Grade) FROM InternsFieldsInternships ifi
--	JOIN Interns i ON ifi.InternId = i.Id
--	JOIN InternsAssignments iass ON iass.InternId = i.Id
--		 ) < 2.4;

-- Testing: For each intern get the average grade for each applied field.
--SELECT * FROM InternsFieldsInternships;

--SELECT SUB.Avg, SUB.FieldId, i.Id FROM Fields
--JOIN (
--	SELECT AVG(iass.Grade), ifi.FieldId, i.Id FROM InternsAssignments iass
--	JOIN Interns i ON iass.InternId = i.id
--	JOIN InternsFieldsInternships ifi ON ifi.InternId = i.Id
--	JOIN Fields f ON ifi.FieldId = f.Id
--	GROUP BY ifi.FieldId, i.Id
--) as SUB ON Fields.id = SUB.FieldId
--JOIN Interns i ON SUB.Id = i.Id;

--SELECT SUB.Avg, SUB.FieldId, i.Id FROM Fields
--JOIN (
--	SELECT AVG(iass.Grade), ifi.FieldId, i.Id FROM InternsAssignments iass
--	JOIN Interns i ON iass.InternId = i.id
--	JOIN InternsFieldsInternships ifi ON ifi.InternId = i.Id
--	JOIN Fields f ON ifi.FieldId = f.Id
--	GROUP BY ifi.FieldId, i.Id
--	HAVING AVG(iass.Grade) > 3
--) as SUB ON Fields.id = SUB.FieldId
--JOIN Interns i ON SUB.Id = i.Id;

UPDATE internsfieldsinternships
SET Status = 'Kicked'
FROM (
	SELECT AVG(iass.Grade), ifi.FieldId, i.Id FROM InternsAssignments iass
	JOIN Interns i ON iass.InternId = i.id
	JOIN InternsFieldsInternships ifi ON ifi.InternId = i.Id
	JOIN Fields f ON ifi.FieldId = f.Id
	GROUP BY ifi.FieldId, i.Id
	HAVING AVG(iass.Grade) < 2.4
) as SUB
WHERE SUB.FieldId = internsfieldsinternships.FieldId AND SUB.Id = internsfieldsinternships.InternId;



