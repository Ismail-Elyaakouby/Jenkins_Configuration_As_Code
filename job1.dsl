folder('My-folder-4') {
}
job("test1") {
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
	disabled(false)
	concurrentBuild(false)
}

job("My-folder-4/test4") {
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
	disabled(false)
	concurrentBuild(false)
}
