folder('my-folder') {
}

folder('project-a') {
    views {
        sectionedView(String name) {
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
                    name(String name)
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
