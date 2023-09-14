job("My-folder-1/test1") {
	description()
	keepDependencies(false)
	scm {
		git {
			remote {
				github("Ismail-Elyaakouby/jcasc", "https")
			}
			branch("*/master")
		}
	}
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        maven('-e clean test')
    }
	disabled(false)
	concurrentBuild(false)
}


job("My-folder-2/test2") {
	description()
	keepDependencies(false)
	scm {
		git {
			remote {
				github("Ismail-Elyaakouby/jcasc", "https")
			}
			branch("*/master")
		}
	}
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        maven('-e clean test')
    }
	disabled(false)
	concurrentBuild(false)
}

