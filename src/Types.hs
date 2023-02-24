{-# LANGUAGE GADTs #-}
module Types where

import Data.Char (toUpper)  
import GHC.ST (STret)

-- DEFAULT expire in day for recruit smart contract --
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

-- HeadHunt_contract (Application, Company, Referrer, HeadhuntReward, HHRewardToken, PlatformReward, StartDate, ContractStatus) -- quantity_to_hire (for future upgrade), )
-- Application (job, applied_candidate, RecruitState)
-- Job (employeeer, position, JD, startdate, expireddate, jobstatus)
data UserType = Company | Talent

data Wallet = Wallet {getPublicKey :: String, signPrivatekey :: String}
data User = Org {getUserType :: UserType,  getUserName::String, getWallet::Wallet}
