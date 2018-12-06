workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./my-action"
  env = {
    MY_NAME = "Daniel"
  }
  args = "\"Hello world, I'm $MY_NAME! And the secret to life is $SECRET1\""
  secrets = ["GITHUB_TOKEN"]
}
