//
//  Item.swift
//  mRoute
//
//  Created by Sanjay Gangwar on 11/07/23.
//

import Foundation

enum Item {
    case mails
    case google
    case hackAJob
    case linkedin
    case naukri
    case instahire
    case glassDoor
    case indeed
    case weekDay
    case hirist
    case bigShift
    case startUpJobs
    case wellFounded
    case topHire
    case turing
    case loopCV
    case shine
    case chatGPT
    
    var label: String {
        switch self {
        case .mails:
            return "Mails"
        case .google:
            return "Google"
        case .hackAJob:
            return "HackAJob"
        case .linkedin:
            return "Linkedin"
        case .naukri:
            return "Naukri"
        case .instahire:
            return "Instahire"
        case .glassDoor:
            return "GlassDoor"
        case .indeed:
            return "Indeed"
        case .weekDay:
            return "WeekDay"
        case .hirist:
            return "Hirist"
        case .bigShift:
            return "BigShift"
        case .startUpJobs:
            return "StartUp Jobs"
        case .wellFounded:
            return "WellFounded"
        case .topHire:
            return "TopHire"
        case .turing:
            return "Turing"
        case .loopCV:
            return "LoopCV"
        case .shine:
            return "Shine"
        case .chatGPT:
            return "ChatGPT"
        }
    }
    
    var icon: String {
        switch self {
        case .mails:
            return "https://cdn.iconscout.com/icon/free/png-256/free-google-mail-new-logo-icon-download-in-svg-png-gif-file-formats--gmail-one-ui-pack-logos-icons-3955524.png"
        case .google:
            return "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"
        case .hackAJob:
            return "https://media.licdn.com/dms/image/v2/D560BAQF6HYG6dvSK0Q/company-logo_200_200/company-logo_200_200/0/1683088716419/hackajob_logo?e=2147483647&v=beta&t=xCEpmerToqnMH2syL-pKbrceBtCIvKKwNHcXP5Cnzc8"
        case .linkedin:
            return "https://cdn-icons-png.flaticon.com/512/174/174857.png"
        case .naukri:
            return "https://play-lh.googleusercontent.com/76gEFhQto5xMHr2Qf8nWLvm1s0O60clhkwHvxQDSeI3hthf7Zs05JJQeyg5H347DGQ"
        case .instahire:
            return "https://static.instahyre.com/images/logos/logo.webp"
        case .glassDoor:
            return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiGXOdi2l8mOB1H7mZVSrh5HUuo_NqjNesWw&s"
        case .indeed:
            return "https://pageflows.com/media/logos/indeed.jpg"
        case .weekDay:
            return "https://jobs.weekday.works/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Flogo.268caeb2.png&w=384&q=75"
        case .hirist:
            return "https://staticlogo.hirist.com/webp/hirist-tech-logo.webp"
        case .bigShift:
            return "https://www.bigshyft.com/static/mailers/Logo.png"
        case .startUpJobs:
            return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBi8NHnzhXiB3Fp6qSTKR_UBFWn5kS9z4FXw&s"
        case .wellFounded:
            return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaNns9mjPx9NgfrCX2yubncghgP_urft_6OQ&s"
        case .topHire:
            return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa7NgQAy5myFT5oId-0Al68hHxmIm1xHp7bg&s"
        case .turing:
            return "https://pbs.twimg.com/profile_images/1807814297461907464/xENEAURW_400x400.png"
        case .loopCV:
            return "https://www.loopcv.pro/assets/images/logos/loopcv-new-logo-navbar.png"
        case .shine:
            return "https://play-lh.googleusercontent.com/XZbAiQrSRgCRnmCX8l0t1095rFdj2I8JXEYMCAsq9AhcKbZmYg6_uSR-ABDjiqX5MHxs=s96"
        case .chatGPT:
            return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt_I0AqTbvaxxFCoEWH_SZP49jpBiTMiCkCA&s"
        }
    }
    
    var link: String {
        switch self {
        case .mails:
            return "https://www.mail.google.com"
        case .google:
            return "https://www.google.com/about/careers/applications/dashboard"
        case .hackAJob:
            return "https://user.hackajob.com/dashboard"
        case .linkedin:
            return "https://www.linkedin.com/jobs/"
        case .naukri:
            return "https://www.naukri.com/android-flutter-ios-mobile-app-jobs?k=android%2C%20flutter%2C%20ios%2C%20mobile%20app&nignbevent_src=jobsearchDeskGNB&experience=4&ctcFilter=501&ctcFilter=25to50&ctcFilter=50to75&ctcFilter=75to100&ctcFilter=100to500"
        case .instahire:
            return "https://www.instahyre.com/candidate/opportunities/?matching=true"
        case .glassDoor:
            return "https://www.glassdoor.co.in/Job/android-jobs-SRCH_KO0,7.htm?fromAge=3"
        case .indeed:
            return "https://in.indeed.com/?from=gnav-jobsearch--indeedmobile"
        case .weekDay:
            return "https://jobs.weekday.works/"
        case .hirist:
            return "https://www.hirist.tech/"
        case .bigShift:
            return "https://www.bigshyft.com/"
        case .startUpJobs:
            return "https://startup.jobs/"
        case .wellFounded:
            return "https://angel.co/"
        case .topHire:
            return "https://tophire.co/"
        case .turing:
            return "https://developers.turing.com/"
        case .loopCV:
            return "https://app.loopcv.pro/"
        case .shine:
            return "https://www.shine.com/hackathon/dashboard"
        case .chatGPT:
            return "https://chat.openai.com/"
        }
    }
}

