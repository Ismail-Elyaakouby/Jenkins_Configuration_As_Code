folder('my-folder') {
}

folder('project-a') {
    views {
        sectionedView(project-A) {
            sections {
                viewListing {
                    jobFilters {
                        regex('.*test*')
                    } 
                }
            }
        }
    }
}
