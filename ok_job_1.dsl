job("My-folder-1/test1") {
    description()
    keepDependencies(false)
    scm {
        git("https://github.com/Ismail-Elyaakouby/Jenkins_Configuration_As_Code.git", main)
    }

    steps {
        echo 'maven'
	maven("test -Dproject.name=Jenkins_Configuration_As_Code/main")
    }
    disabled(false)
    concurrentBuild(false)
}
