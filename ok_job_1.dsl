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
        maven {
            mavenInstallation('Maven-Name')
            goals('clean compile package')
The switches {} block in a Jenkins DSL (Job DSL) script is used to specify command-line switches and options for build tools like Maven, Gradle, or custom shell scripts. Here's an example of how to use the switches {} block with Maven in a Jenkins DSL script:

groovy

job('example-job') {
    // ... Other job configuration ...

    steps {
        maven {
            mavenInstallation('Maven-Name') // Define a Maven installation in Jenkins
            goals('clean compile package') // Specify Maven goals as needed
            switches {
                // Use the switches block to specify Maven command-line switches/options
                option('-DskipTests=true') // Example: Skip running tests during the build
                option('-Pmy-profile') // Example: Activate a Maven profile
                option('-Dmy.property=value') // Example: Set a system property
                // You can add more switches/options as needed
            }
        }
    }

    // Post-build actions
    publishers {
        archiveJunit('**/target/surefire-reports/*.xml') // Archive JUnit test results if available
        archiveArtifacts(allowEmptyArchive: true, artifacts: '**/target/*.jar') // Archive the JAR files
    }
}
