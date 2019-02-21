workflow "New workflow" {
  on = "push"
  resolves = [
    "docker://hello-world-1",
    "docker://hello-world-2",
  ]
}

action "docker://hello-world" {
  uses = "docker://hello-world"
}

action "docker://hello-world-1" {
  uses = "docker://hello-world"
  needs = [
    "docker://hello-world",
    "docker://hello-world-2",
  ]
}

action "docker://hello-world-2" {
  uses = "docker://hello-world"
}
