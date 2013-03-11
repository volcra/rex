function Show-RexHelp {
$h1="=" * 80
$h2="-" * 80

@"
$h1
         _           _     _      _
        /\ \        /\ \ /_/\    /\ \
       /  \ \      /  \ \\ \ \   \ \_\
      / /\ \ \    / /\ \ \\ \ \__/ / /
     / / /\ \_\  / / /\ \_\\ \__ \/_/
    / / /_/ / / / /_/_ \/_/ \/_/\__/\
   / / /__\/ / / /____/\     _/\/__\ \
  / / /_____/ / /\____\/    / _/_/\ \ \
 / / /\ \ \  / / /______   / / /   \ \ \
/ / /  \ \ \/ / /_______\ / / /    /_/ /
\/_/    \_\/\/__________/ \/_/     \_\/

$h1
"@ | Write-Host -ForegroundColor Red

@"
Rex is a very simple and basic package manager

Usage
$h2

rex install groovy
"@ | Write-Host -ForegroundColor Green
}
