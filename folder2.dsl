folder('project-a') {
    views {
        listView('builds') {
            description('All unstable jobs for project B')
            jobFilters {
                regex {
                    matchType(MatchType.EXCLUDE_MATCHED)
                    matchValue(RegexMatchValue.DESCRIPTION)
                    regex('.*test*')
                }
            }
        }
    }
}
folder('My-folder3') {
}

listView("My-folder3/builds") {
    jobs {
        regex('.*(test|regex2).*') 
    }
    jobFilters {
        regex {
            regex('.*(test|regex2).*')
        } 
    }
}
