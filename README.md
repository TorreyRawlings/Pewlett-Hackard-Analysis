# Pewlett-Hackard-Analysis
The purpose of this analysis is to determine all the titles that are retiring and see who would be qualified for a mentorship program.

## Key points from data collecting those that will be hiting retirement age soon:
- 25,916 Senior Engineers will be hitting retirement age.
- 24,926 Senior staff will be hitting retirement age. 
- There's a little over 1700 employees who quality for the mentorship program.
- There's very few managers hiting retirement age so that is not an area of concern. 

## Questions we should look at going forward: 
- How many of each title would qualify for the mentorship program? This would be helpful to know if we have enough to mentor for the larger groups of job types leaving. This could be determined with the following query: 
  - select count (emp_no), title
    from mentorship_eligibility
    group by title
- How many overall currently employees are there for each title? We can use these numbers to determine what percentage of each title is leaving OR how many of each title would be left if all of the retiring employees leave. This can be determine with the following query: 
  - select count (distinct e.emp_no), t.title from employees e
join titles t on e.emp_no = t.emp_no
where t.to_date = '9999-01-01'
group by t.title
