folder('my-folder') {
}

folder('project-a') {
    views {
        listView('project-A') {
            description('All unstable jobs for project A')
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
