workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./my-action"
  env = {
    MY_NAME = "Daniel"
  }
  secrets = ["SECRET1"]
  args = "\"Hello world, I'm $MY_NAME! And the secret to life is $SECRET1\""
}