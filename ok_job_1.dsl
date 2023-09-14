job("test1") {
    description()
    keepDependencies(false)
    scm {
        git("https://github.com/Ismail-Elyaakouby/aghouchaf02.git", main)
    }

    steps {
        sh 'mvn install'
    }
    disabled(false)
    concurrentBuild(false)
}
