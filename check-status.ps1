# Vérifie le dernier commit et son statut GitHub via l'API
$token = "<TON_TOKEN_GITHUB>"
$owner = "annecolombeoyanenguema-lgtm"
$repo = "webops-lab"

# Récupère le dernier commit
$lastCommit = git log -n 1 --pretty=format:"%H"

# Prépare les headers pour GitHub API
$headers = @{
    Accept = "application/vnd.github+json"
    Authorization = "Bearer $token"
}

# Appel API pour le statut du commit
$status = Invoke-RestMethod -Uri "https://api.github.com/repos/$owner/$repo/commits/$lastCommit/status" -Headers $headers

# Affiche l'état
Write-Host "Dernier commit : $lastCommit"
Write-Host "Statut : $($status.state)"
