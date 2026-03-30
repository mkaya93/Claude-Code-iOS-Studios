---
paths:
  - "src/networking/**"
---

# Network Code Rules (iOS)

- ALL network requests use `async/await` via URLSession — no completion handlers
- Validate ALL HTTP status codes — never assume 200
- ALL network types must be `Sendable` — they cross actor boundaries
- Use `actor` for shared network state (auth tokens, request queues)
- Implement retry logic with exponential backoff for transient failures
- ALL network communication over HTTPS — App Transport Security enforced
- Log request/response in DEBUG builds only — NEVER log tokens or PII in any build
- Handle all error cases: offline, timeout, server error, decode failure

## Reference
- URLSession: https://developer.apple.com/documentation/foundation/urlsession
- Network framework: https://developer.apple.com/documentation/network

## Correct Pattern

```swift
actor APIClient {
    func fetch<T: Decodable & Sendable>(_ endpoint: Endpoint) async throws -> T {
        let (data, response) = try await URLSession.shared.data(from: endpoint.url)
        guard let http = response as? HTTPURLResponse,
              200...299 ~= http.statusCode else {
            throw APIError.invalidResponse
        }
        return try JSONDecoder().decode(T.self, from: data)
    }
}
```
