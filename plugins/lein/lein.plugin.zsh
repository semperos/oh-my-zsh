function _lein_commands() {
    local ret=1 state
    _arguments ':subcommand:->subcommand' && ret=0

    case $state in
      subcommand)
        subcommands=(
          "check:Check syntax and warn on reflection."
          "classpath:Write the classpath of the current project to output-file."
          "clean:Remove all files from paths in project's clean-targets."
          "compile:Compile Clojure source into .class files."
          "deploy:Deploy jar and pom to remote repository."
          "deps:Show details about dependencies."
          "do:Higher-order task to perform other tasks in succession."
          "help:Display a list of tasks or help for a given task or subtask."
          "install:Install current project to the local repository."
          "jar:Package up all the project's files into a jar file."
          "javac:Compile Java source files."
          "new:Generate scaffolding for a new project based on a template."
          "plugin:DEPRECATED. Please use the :user profile instead."
          "pom:Write a pom.xml file to disk for Maven interoperability."
          "repl:Start a repl session either with the current project or standalone."
          "retest:Run only the test namespaces which failed last time around."
          "run:Run the project's -main function."
          "search:Search remote maven repositories for matching jars."
          "show-profiles:List all available profiles or display one if given an argument."
          "test:Run the project's tests."
          "trampoline:Run a task without nesting the project's JVM inside Leiningen's."
          "uberjar:Package up the project files and all dependencies into a jar file."
          "update-in:Perform arbitrary transformations on your project map."
          "upgrade:Upgrade Leiningen to specified version or latest stable."
          "version:Print version for Leiningen and the current JVM."
          "with-profile:Apply the given task with the profile(s) specified."
        )
        _describe -t subcommands 'leiningen subcommands' subcommands && ret=0
    esac

    return ret
}

compdef _lein_commands lein
