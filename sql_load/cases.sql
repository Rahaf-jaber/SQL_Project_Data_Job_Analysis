SELECT
    job_title_short,
    job_location
FROM job_postings_fact

SELECT
    COUNT(job_id) AS number_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        Else 'Onsite'
    END AS New
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    New;