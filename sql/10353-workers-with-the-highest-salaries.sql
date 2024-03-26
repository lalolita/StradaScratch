-- https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3
select title.worker_title as best_paid_worker
from worker
  join title on title.worker_ref_id = worker.worker_id
group by worker_title
having max(salary) = (
    select max(salary)
    from worker
  )
