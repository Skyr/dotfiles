addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "2.1.1")

// addSbtPlugin("name.heikoseeberger.groll" % "groll" % "1.3.0", sbtVersion = "0.12")

// addSbtPlugin("org.lifty" % "lifty" % "1.7.4", sbtVersion = "0.11")


resolvers += "sbt-idea-repo" at "http://mpeltonen.github.com/maven/"

addSbtPlugin("com.github.mpeltonen" % "sbt-idea" % "1.2.0")


addSbtPlugin("com.typesafe.sbt" % "sbt-license-report" % "1.0.0")

addSbtPlugin("com.timushev.sbt" % "sbt-updates" % "0.1.6")

resolvers += "jgit-repo" at "http://download.eclipse.org/jgit/maven"

addSbtPlugin("com.typesafe.sbt" % "sbt-git" % "0.6.4")

