folder('my-folder') {
}

folder('project-a') {
    views {
        listView('project-A') {
            description('All unstable jobs for project A')
            jobFilters {
                regex('.*test.*')
            } 
        }
    }
}
