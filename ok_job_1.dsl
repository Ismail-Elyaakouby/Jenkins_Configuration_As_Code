job("folder1/test1") {
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


job("folder2/test2") {
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

job('aghouchaf02') {
    description('Build and Package Maven Project from GitHub Repository')

    // Define the SCM section to clone the repository
    scm {
        git {
            remote {
                name('origin')
                url('https://github.com/Ismail-Elyaakouby/aghouchaf02.git')
            }
            branches('*/main') // Specify the branch you want to build
        }
    }

    // Build section
    steps {
        maven('verify')
        maven('clean verify', 'pom.xml')
        maven {
            goals('clean')
            goals('verify')
            mavenOpts('-Xms256m')
            mavenOpts('-Xmx512m')
        }
    }

    // Post-build actions
    publishers {
        archiveJunit('**/target/surefire-reports/*.xml') // Archive JUnit test results if available
        archiveArtifacts(allowEmptyArchive: true, artifacts: '**/target/*.jar') // Archive the JAR files
    }
}

