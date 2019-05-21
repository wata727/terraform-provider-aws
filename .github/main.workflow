workflow "Check Linters" {
    on       = "push"

    resolves = [
        "Terraform Provider Linter"
    ]
}

action "Terraform Provider Linter" {
    uses = "bflad/tfproviderlint-github-action@master"

    env  = {
        GOFLAGS = "-mod=vendor"
    }
}
