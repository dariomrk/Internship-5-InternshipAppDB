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
--)
		 
--UPDATE InternsFieldsInternships
--SET Status = 'Kicked'
--WHERE (
--	SELECT AVG(iass.Grade) FROM InternsFieldsInternships ifi
--	JOIN Interns i ON ifi.InternId = i.Id
--	JOIN InternsAssignments iass ON iass.InternId = i.Id
--		 ) < 2.4