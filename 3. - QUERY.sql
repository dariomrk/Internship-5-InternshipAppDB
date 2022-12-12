-- Output first and last names of members who live outside of Split:
SELECT m.FirstName, m.LastName, c.Name as City FROM Members m
JOIN Cities c ON c.id = m.ResidenceCityId
WHERE c.Name != 'Split';

-- Output start and end date of every internship, sorted descending by start date:
SELECT i.StartAt::date,i.EndAt::date FROM Internships i
ORDER BY i.StartAt DESC;

-- Output all first and last names of 2021./2022. interns:
SELECT Interns.FirstName, Interns.LastName FROM Interns
JOIN InternsFieldsInternships i ON i.InternId = Interns.Id
JOIN Internships its ON its.Id = i.InternshipId
WHERE DATE_PART('year', its.StartAt) = 2021 AND DATE_PART('year', its.EndAt) = 2022;

-- Output the number of female interns for this year
SELECT COUNT(Interns.id) as FemaleInterns FROM Interns
JOIN InternsFieldsInternships i ON i.InternId = Interns.Id
JOIN Internships its ON its.Id = i.InternshipId
WHERE 
		DATE_PART('year', its.StartAt) = DATE_PART('year', NOW()) OR
		DATE_PART('year', its.EndAt) = DATE_PART('year', NOW())
		AND its.Phase = 'Ongoing';
		
-- Number of kicked marketing interns
SELECT COUNT(Interns.Id) as KickedMarketingInterns FROM Interns
JOIN InternsFieldsInternships i ON i.InternId = Interns.Id
JOIN Fields f ON f.Id = i.fieldid
WHERE f.Name = 'Marketing' AND i.Status = 'Kicked';
