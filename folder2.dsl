folder('my-folder') {
}

folder('project-a') {
    views {
        sectionedView(project-A) {
            description(String description)
            sections {
                // Adds a list view section.
                listView {
                    // Adds or removes jobs from the view by specifying filters.
                    jobFilters {
                        regex('.*test*')
                    }
                    // Adds jobs to the section.
                    jobs {}
                    // Sets the name of the section.
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
