folder('my-folder') {
}

listView('my-view') {
  jobs {
    name('test1')
  }
  columns {
    status()
    name()
  }
}
