workflow "New workflow" {
  on = "push"
  resolves = ["docker://hello-world-1"]
}

action "docker://hello-world" {
  uses = "docker://hello-world"
}

action "docker://hello-world-1" {
  uses = "docker://hello-world"
  needs = ["docker://hello-world"]
}
