folder('my-folder') {
}

listView('project-A') {
    description('All unstable jobs for project A')
    jobs {
        name('release-projectA')
        regex('.*test.*')
    }

    columns {
        status()
        name()
    }
}
