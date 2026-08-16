# Step 1: Inspect environment
node --version
npm --version
git --version
gh --version
gh auth status

# Step 2: Create React application
npx create-react-app propeller-logo-app
cd propeller-logo-app

# Step 3: Initialize Git and create initial commit
git init
git add .
git commit -m "Initial React app"
git branch -M master

# Step 4: Create GitHub repository
gh repo create propeller-logo-app --public --source=. --remote=origin
git push -u origin master

# Step 5: Create and switch to branch
git checkout -b update_logo

# Step 6: Replace React logo
Invoke-WebRequest -Uri "https://cdn-ikponof.nitrocdn.com/vGqfYAGlOLDkYkJqZhYIYKEsibdbZnkc/assets/images/optimized/rev-f684a87/www.propelleraero.com/wp-content/uploads/2023/05/footer-logo.svg" -OutFile "src\logo.svg"

# Step 7: Replace the existing link
# Edited src/App.js to change the default React link to https://www.propelleraero.com/dirtmate/

# Step 8: Test the React application
npm run build

# Step 9: Commit the changes
git add .
git commit -m "Update Propeller Aero logo and DirtMate link"

# Step 10: Push update_logo
git push -u origin update_logo

# Step 11: Create the Pull Request using GitHub CLI
gh pr create --base master --head update_logo --title "Update Propeller Aero logo and DirtMate link" --body "Replaced the default React logo with the Propeller Aero logo and updated the application link to the Propeller Aero DirtMate page."

# Step 12: Merge the Pull Request using GitHub CLI
gh pr merge 1 --merge

# REPO_URL https://github.com/Saadi7701/propeller-logo-app
