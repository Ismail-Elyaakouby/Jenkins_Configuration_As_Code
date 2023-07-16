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
        authorization {
          // Specify the desired authorization settings for the job
          permission('hudson.model.Item.Build', 'user1')
          permission('hudson.model.Item.delete', 'user1')
          permission('hudson.model.Item.Configure', 'user1')
        }
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
        authorization {
          // Specify the desired authorization settings for the job
          permission('hudson.model.Item.Build', 'user2')
          permission('hudson.model.Item.delete', 'user2')
          permission('hudson.model.Item.Configure', 'user2')
        }
}
