workflow "Provider Linter" {
  on = "push"
  resolves = ["./linter/"]
}

action "./linter/" {
  uses = "./linter/"
  env = {
    GOFLAGS = "-mod=vendor"
  }
}
