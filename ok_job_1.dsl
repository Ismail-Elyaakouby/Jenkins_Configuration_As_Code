job("My-Maven-Project") {
    displayName("My Maven Project Build")
    description("Builds and packages a Maven project")

    scm {
        git("https://github.com/Ismail-Elyaakouby/aghouchaf02.git")
    }

    steps {
        maven("-e clean package")
    }

    publishers {
        archiveArtifacts {
            artifacts('**/target/*.jar')
            allowEmptyArchive(true)
        }
    }
}
