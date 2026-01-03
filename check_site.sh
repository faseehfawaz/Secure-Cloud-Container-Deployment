#!/bin/bash
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)
if [ "$STATUS" == "200" ]; then
    echo "✅ Website is ONLINE!"
else
    echo "❌ Website is DOWN (Status: $STATUS)"
fi
