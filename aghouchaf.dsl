job("DWH-RUN-TALEND") {
	description()
	keepDependencies(false)
	scm {
		git {
			remote {
				github("Praqma/praqma-jenkins-casc", "https")
				credentials("github")
			}
			branch("*/master")
		}
	}
	disabled(false)
	concurrentBuild(false)
	steps {
		shell("echo \"hello aghouchaf\"")
	}
}
