workflow "New workflow" {
  on = "push"
  resolves = ["docker://hello-world"]
}

action "docker://hello-world" {
  uses = "docker://hello-world"
}
