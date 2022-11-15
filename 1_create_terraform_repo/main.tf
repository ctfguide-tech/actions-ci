resource "github_repository" "github-action-terraform" {
  name          = "your-repo-name"
  description   = "Terraform Repo"
  private       = false
  has_projects  = false
  has_wiki      = false
  has_downloads = false
  license_template = "mit"
}

// this depends on the previous repo being created
// if you put your aws credentials in plaintext below, don't push it to GitHub
// also, always use an aws account with limited access, and never your root account (for security purpose)
resource "github_actions_secret" "github-action-terraform-access-key" {
  repository       = "your-repo-name"
  secret_name      = "AWS_ACCESS_KEY_ID"
  plaintext_value  = "ABCDEFG"
}
resource "github_actions_secret" "github-action-terraform-secret-key" {
  repository       = "your-repo-name"
  secret_name      = "AWS_SECRET_ACCESS_KEY"
  plaintext_value  = "1234567890"
}