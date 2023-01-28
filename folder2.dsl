folder('my-folder1') {
}
folder('my-folder2') {
}

folder('project-a') {
    views {
        listView('project-B') {
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

listView("My-folder3/myView1") {
    jobs {
        regex('.*test*')
    }
    jobFilters {
        regex {
            regex('.*test*')
        } 
    }
}
