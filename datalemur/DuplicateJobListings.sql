--- Two seperate queries solution
/*
with job_count as (
SELECT company_id, title, description, count(job_id) as dupe FROM job_listings
group by company_id, title, description having dupe > 1
)

select count(*) as duplicate_companies from job_count
*/

--- Nested Query solution
select count(*) as duplicated_companies from
(
SELECT company_id, title, description, count(job_id) as dupe FROM job_listings
group by company_id, title, description having dupe > 1
) as duplicate;
