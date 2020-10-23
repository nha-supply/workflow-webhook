# Workflow Webhook Action

A Github workflow action to call a remote webhook endpoint with a JSON or form-urlencoded
payload.

## Usage

The following are example snippets for a Github yaml workflow configuration. <br/>

Send the JSON (default) payload to a webhook:

```yml
    - name: Invoke deployment hook
      uses: nha-supply/workflow-webhook@v2
      env:
        webhook_url: ${{ secrets.WEBHOOK_URL }}
        data: ${{ toJson(github.event) }}
```

## Arguments

```yml 
  webhook_url: "https://your.webhook"
```

*Required*. The HTTP URI of the webhook endpoint to invoke. The endpoint must accept 
an HTTP POST request. <br/><br/>

```yml 
  data: "Additional JSON or URL encoded data"
```

Data to include in the payload. 

