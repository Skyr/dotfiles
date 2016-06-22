addSbtPlugin("com.softwaremill.clippy" % "plugin-sbt" % "0.2.5")

addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "4.0.0")

addSbtPlugin("com.typesafe.sbt" % "sbt-license-report" % "1.2.0")

resolvers += Resolver.url("rtimush/sbt-plugin-snapshots", new URL("https://dl.bintray.com/rtimush/sbt-plugin-snapshots/"))(Resolver.ivyStylePatterns)
addSbtPlugin("com.timushev.sbt" % "sbt-updates" % "0.1.9-6-g5a7705c")

resolvers += "jgit-repo" at "http://download.eclipse.org/jgit/maven"
addSbtPlugin("com.typesafe.sbt" % "sbt-git" % "0.8.5")
// addSbtPlugin("com.typesafe.sbt" % "sbt-git" % "0.7.1")

// Needs individual configuration
// addSbtPlugin("io.spray" % "sbt-revolver" % "0.7.2")

