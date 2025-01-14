%Facts
%Used Me instead of I. Due to a warning.
go_to_college(Me).
study_hard(Me).
hard_working(Me).
techProfessional(Me).
attend_lectures(Me).

%Rules
Learn(X):-go_to_college(X),attend_lectures(X).
not_attend_lectures(X):-attend_lectures(X),fail.
miss_lessons(X):-go_to_college(X),not_attend_lectures(X).
pass_exam(X):-study_hard(X),go_to_college(X).
Knowledgeable(X):-learn(X).
submit_assignment(X):-miss_lessons(X).
be_graduate(X):-pass_exam(X).
earn_money(X):-techProfessional(X),hard_working(X).
go_on_trip(X):-earn_money(X).
be_happy(X):-be_graduate(X);go_on_trip(X).
