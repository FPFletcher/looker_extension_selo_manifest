project_name: "custom_applications"

application: selo_agentic_app_PRODUCTION {
  label: "Selo Agentic App"

  # Use the deployed Cloud Run URL for testing
  url: "https://selo-extension-web-734857282249.europe-west1.run.app/bundle.js"

  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    new_window_external_urls: [
      "https://selo-extension-backend-734857282249.europe-west1.run.app/*",
      "https://selo-extension-web-734857282249.europe-west1.run.app/*",
      "https://mail.google.com/*",
      # Instance URL to be personalized
      "https://<YOUR_INSTANCE_DOMAIN>.com/*"
    ]
    # These are the methods the frontend can call on behalf of the user
    core_api_methods: [
      "me",
      "user_roles",
      "search_users",
      "all_connections",
      "all_lookml_models",
      "create_query",
      "run_query"
    ]

    # CRITICAL: Add your backend URL here so the extension can talk to it
    external_api_urls: [
      # Backend API URL
      # Used by the frontend to send chat requests and fetch data.
      "https://selo-extension-backend-734857282249.europe-west1.run.app",

      # Frontend Web URL
      # Where the extension assets (bundle.js) and static files (logos) are hosted.
      "https://selo-extension-web-734857282249.europe-west1.run.app",

      # Instance URL to be personalized
      "https://<YOUR_INSTANCE_DOMAIN>.com"
    ]
  }
}
