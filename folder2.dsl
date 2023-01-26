folder('my-folder') {
}

listView('my-view') {
  description('All unstable jobs for project A')
  jobs {
    name('test1')
  }
  columns {
    status()
    name()
  }
}

listView('project-A') {
    description('All unstable jobs for project A')
    filterBuildQueue()
    filterExecutors()
    jobs {
        name('release-projectA')
        regex('.*test.*')
    }
    jobFilters {
        status {
            status(Status.UNSTABLE)
        }
    }
    columns {
        status()
        weather()
        name()
        lastSuccess()
        lastFailure()
        lastDuration()
        buildButton()
    }
}
