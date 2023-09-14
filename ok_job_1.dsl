job('testJob1') {
    scm {
        git('https://github.com/Ismail-Elyaakouby/aghouchaf02.git')
    }
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        maven('-e clean test')
    }
}
