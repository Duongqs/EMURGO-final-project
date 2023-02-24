{-# LANGUAGE GADTs #-}
module Types where

import Data.Char (toUpper)  
import GHC.ST (STret)
-- import Data.Dates.Types 

-- DEFAULT expire in day for Headhunt smart contract --
_DEFAULT_EXPIRE_ :: Int
_DEFAULT_EXPIRE_ = 90

---
data ContractStatus where
  Start :: ContractStatus
  InProcess :: ContractStatus
  Closing :: ContractStatus
  Disputing :: ContractStatus
  End :: ContractStatus

data RecruitState where
  Open :: RecruitState
  Interview :: RecruitState
  Offering :: RecruitState
  Onboarding :: RecruitState
  SuccessClose :: RecruitState
  NotFitClose :: RecruitState

  
data JobStatus where
    Posted :: JobStatus
    Expired :: JobStatus
    Achieved :: JobStatus
    Rejected ::  JobStatus

_DEFAULT_TOKEN_ :: String
_DEFAULT_TOKEN_ = "ADA"

_PLATFORM_TOKEN_ :: String
_PLATFORM_TOKEN_ = "UTC"



data Wallet = Wallet {getPublicKey :: String, signPrivatekey :: String}

data UserType = Company | Talent
data User = User {getUserType :: UserType,  getUserName::String, getWallet::Wallet}

type Company =  User 
type Talent = User


type Date = String

data Job = Job {
     getEmployeer   ::Company
    ,getposition    ::String
    ,getJD          ::String
    ,getStartdate   ::Date
    ,getExpiredate  ::Date
    ,getJobStatus   ::JobStatus
}



data Application = Application {
     getJob          :: Job 
    ,getCandidate    :: Talent
    ,getRecruitState :: RecruitState
}


data HeadhuntContract = HeadhuntContract {
     getApplication :: Application 
    ,getCompany     :: Talent

    }

talent = User  {getUserType = Talent,  getUserName ="Duong"}


-- HeadHunt_contract (Application, Company, Referrer, HeadhuntReward, HHRewardToken, PlatformReward, StartDate, ContractStatus) -- quantity_to_hire (for future upgrade), )
-- Application (job, applied_candidate, RecruitState)
-- Job (employeeer, position, JD, startdate, expireddate, jobstatus)