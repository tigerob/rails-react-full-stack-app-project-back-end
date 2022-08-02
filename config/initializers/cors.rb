# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
    origins "localhost:3000", "localhost:3001", "localhost:3002", "localhost:3003", "localhost:3004", "localhost:3005", "localhost:3006", "localhost:3007", "localhost:3008", "localhost:3009", "localhost:3010", "localhost:3011", "localhost:3012", "localhost:3013", "localhost:3014", "localhost:3015", "localhost:3016", "localhost:3017", "localhost:3018", "localhost:3019", "localhost:3020", "localhost:3021", "localhost:3022", "localhost:3023", "localhost:3024", "localhost:3025", "localhost:3026", "localhost:3027", "localhost:3028", "localhost:3029", "localhost:3030", "localhost:3031", "localhost:3032", "localhost:3033", "localhost:3034", "localhost:3035", "localhost:3036", "localhost:3037", "localhost:3038", "localhost:3039", "localhost:3040", "localhost:3041", "localhost:3042", "localhost:3043", "localhost:3044", "localhost:3045", "localhost:3046", "localhost:3047", "localhost:3048", "localhost:3049", "localhost:3050", "localhost:3051", "localhost:3052", "localhost:3053", "localhost:3054", "localhost:3055", "localhost:3056", "localhost:3057", "localhost:3058", "localhost:3059", "localhost:3060", "localhost:3061", "localhost:3062", "localhost:3063", "localhost:3064", "localhost:3065", "localhost:3066", "localhost:3067", "localhost:3068", "localhost:3069", "localhost:3070", "localhost:3071", "localhost:3072", "localhost:3073", "localhost:3074", "localhost:3075", "localhost:3076", "localhost:3077", "localhost:3078", "localhost:3079", "localhost:3080", "localhost:3081", "localhost:3082", "localhost:30"

    resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
