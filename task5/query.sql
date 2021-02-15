SELECT *
  FROM Result
    WHERE StudentID IN (
      SELECT StudentID
      FROM Students
    WHERE Student="Yesman Mikhail Mihajlovich"
);
