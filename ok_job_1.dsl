job("test1") {
    description()
    keepDependencies(false)
    scm {
        git("https://github.com/Ismail-Elyaakouby/Jenkins_Configuration_As_Code.git", main)
    }

    steps {
        echo 'maven'
    }
    disabled(false)
    concurrentBuild(false)
}
