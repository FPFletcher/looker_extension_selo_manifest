project_name: "custom_applications"

application: selo_agentic_app_PRODUCTION {
  label: "Selo Agentic App"

  # Use the deployed Cloud Run URL for testing, in due time the app code will be made open source so you can host it yourself
  url: "https://<YOUR_FRONT_END_cloud_run_domain>.run.app/bundle.js"

  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    new_window_external_urls: [
      "https://<YOUR_BACK_END_cloud_run_domain>.run.app/*",
      "https://<YOUR_FRONT_END_cloud_run_domain>.run.app/*",
      "https://mail.google.com/*",
      # Instance URL to be personalized, the domain can be .com or .app based on wether you use Looker Original or Core
      "https://<YOUR_INSTANCE_DOMAIN>/*"
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

    external_api_urls: [
# Backend API URL
    # Used by the frontend to send chat requests and fetch data.
    "https://<YOUR_BACK_END_cloud_run_domain>.run.app",

    # Frontend Web URL
    # Where the extension assets (bundle.js) and static files (logos) are hosted.
    "https://<YOUR_FRONT_END_cloud_run_domain>.run.app",

    # Instance URL to be personalized, the domain can be .com or .app based on wether you use Looker Original or Core
    "https://<YOUR_INSTANCE_DOMAIN>"
  ]
}
}
