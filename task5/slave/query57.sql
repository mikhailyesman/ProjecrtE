mysql -u smes -p <<EOF
USE db_group
  SELECT Student
    FROM Students
      WHERE StudentID IN (
      SELECT StudentID
      FROM Students
    WHERE Student="${USERNAME}")
EOF