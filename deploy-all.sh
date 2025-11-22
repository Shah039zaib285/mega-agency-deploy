#!/bin/bash

echo "🚀 Mega Agency - Complete Free Tier Deployment"
echo "=============================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check command success
check_success() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ $1${NC}"
    else
        echo -e "${RED}❌ $1 failed${NC}"
        exit 1
    fi
}

echo -e "${YELLOW}📦 Checking Git setup...${NC}"

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
    git branch -M main
    check_success "Git initialized"
fi

echo -e "${YELLOW}🔧 Checking project structure...${NC}"

# Check for required files
required_files=("package.json" "Dockerfile" "render.yaml" ".env.example")
for file in "${required_files[@]}"; do
    if [ -f "$file" ]; then
        echo -e "${GREEN}✅ Found $file${NC}"
    else
        echo -e "${RED}❌ Missing $file${NC}"
    fi
done

echo -e "${YELLOW}📤 Preparing for deployment...${NC}"

# Add all files to git
git add .
check_success "Files added to Git"

# Commit changes
git commit -m "Mega Agency Free Tier Deployment - $(date '+%Y-%m-%d %H:%M:%S')"
check_success "Changes committed"

echo -e "${GREEN}🎉 Local setup completed successfully!${NC}"
echo ""
echo -e "${YELLOW}📋 Next Steps:${NC}"
echo "1. Run: git push origin main"
echo "2. Go to https://render.com"
echo "3. Connect your GitHub repository" 
echo "4. Deploy as Web Service"
echo "5. Set environment variables"
echo "6. Setup UptimeRobot monitoring"
echo ""
echo -e "${GREEN}🚀 Your Mega Agency will be live in minutes!${NC}"