folder('my-folder') {
}

folder('project-a') {
    views {
        sectionedView(project-A) {
            sections {
                listView {
                    jobFilters {
                        regex('.*test*')
                    }
                    jobs {}
                    name(project-A)
                }
                viewListing {
                    jobFilters {
                        regex('.*test*')
                    } 
                }
            }
        }
    }
}
