import mill._, scalalib._, publish._

import coursier.Repository
import mill._
import mill.define.Target
import mill.modules.Assembly._
import mill.scalalib._
import mill.scalalib.publish.{PomSettings, _}
import mill.scalalib.scalafmt.ScalafmtModule
import $ivy.`com.goyeau::mill-scalafix:8974b57`
import com.goyeau.mill.scalafix.ScalafixModule
import $ivy.`com.lihaoyi::mill-contrib-bloop:$MILL_VERSION`


object `spark` extends ScalaModule with PublishModule {
  def scalaVersion = "2.12.12"

  def millVersion = "0.7.4"

  def publishVersion = "0.1.0"

  def artifactName = "mill-spark"

  override def pomSettings = PomSettings(
    description = "Build projects against multiple Spark and Scala versions.",
    organization = "com.nikvanderhoof",
    url = "https://www.github.com/nvander1/mill-spark",
    licenses = Seq(License.MIT),
    versionControl = VersionControl.github("nvander1", "mill-spark"),
    developers = Seq(
      Developer("nvander1", "Nikolas Vanderhoof", "https://www.github.com/nvander1")
    )
  )
}
