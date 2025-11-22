# UptimeRobot Setup Guide

## Steps to Monitor Your Services:

1. **Go to UptimeRobot.com**
2. **Create free account**
3. **Add monitors for each service:**

### Monitor 1: n8n Bot
- URL: https://mega-agency-bot.onrender.com/healthz
- Interval: 5 minutes
- Type: HTTP(s)

### Monitor 2: API Bridge  
- URL: https://mega-agency-bridge.onrender.com/health
- Interval: 5 minutes
- Type: HTTP(s)

### Monitor 3: AI Server
- URL: https://mega-agency-ai.onrender.com/health
- Interval: 5 minutes  
- Type: HTTP(s)

## Benefits:
- 24/7 service monitoring
- Prevents Render sleep
- Email/SMS alerts
- Free forever