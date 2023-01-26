folder('my-folder') {
}

folder('project-a') {
    views {
        listView('project-A') {
            description('All unstable jobs for project A')
            jobs {
                name('release-projectA')
                regex('.*test.*')
            }
        jobFilters {
            regex('.*test.*')
        } 
            columns {
                status()
                name()
            }
        }
    }
}
