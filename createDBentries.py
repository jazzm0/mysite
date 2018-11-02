from polls.models import Question
from django.utils import timezone

Question.objects.all()
q = Question(question_text="What's new?", pub_date=timezone.now())
q.save()
q.question_text = "What's up?"
q.save()
q.choice_set.create(choice_text='Not much', votes=0)
q.choice_set.create(choice_text='The sky', votes=0)
c = q.choice_set.create(choice_text='Just hacking again', votes=0)
c.save()
