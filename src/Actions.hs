module Actions where


---------------------------
-- generate an Job
postJob = undefined 
-- After post job, 
--it need to draft headhunt smartcontract

---------------------------
-- candidate apply an existing job, this will generate an application
applyJob = undefined 
-- after a candidate apply a job, 
--then automatically  generate a Headhunt Contract

---------------------------
-- Both recruiter & applicant will update the RecruitState in Application in the same time
-- before action to update, need to verify the Job 
updateRecruitState = undefined
-- after every  (updateRecruitState)
--it need to validate HeadHunt contract (validateContract)

-- execute smart contract for 2 cases ( Closing & Disputing )
-- closing
closingContract = undefined

-- Dispute handler
handleDisputeContract = undefined
-- 2 in 3 dispute handler agree with one status then update the final decision of recruitmentstatus


---------------------------
-- update the job status, (updateJobStatus) and (validateContract) as routine
-- select what action to do
    -- promte to post new job, (postjob)
    -- promte to apply/refer a current job,  (applyJob)
    -- promte to employeer & candidate update Recruite state  (updateRecruitState)
dateRoutine = undefined

-- 
signTransaction = undefined
