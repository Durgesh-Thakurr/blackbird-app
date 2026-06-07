# REPO_URL https://github.com/Durgesh-Thakurr/blackbird-app

npx create-react-app blackbird-app
cd blackbird-app
gh repo create blackbird-app --public --source=. --remote=origin --push
git checkout -b update_logo
curl -o src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
(Get-Content src\App.js) -replace 'https://reactjs.org', 'https://www.propelleraero.com/dirtmate/' | Set-Content src\App.js
git add .
git commit -m "feat: replace logo and link with Propeller assets"
git push origin update_logo
gh pr create --title "update_logo" --body "Replace logo and link with Propeller assets" --base master
gh pr merge 1 --merge
