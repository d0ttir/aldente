import { ApiError } from "../types/api";

type ErrorPayload = {
  message?: string;
  details?: unknown;
};

function getErrorMessage(payload: ErrorPayload | null, fallback: string) {
  if (payload?.message) {
    return payload.message;
  }

  return fallback;
}

export async function apiFetch<T>(
  input: RequestInfo,
  init: RequestInit = {}
): Promise<T> {
  let response: Response;

  try {
    response = await fetch(input, init);
  } catch (error) {
    throw new ApiError(0, "Network error", String(error));
  }

  const contentType = response.headers.get("content-type") || "";
  const isJson = contentType.includes("application/json");

  let payload: unknown = null;
  if (isJson) {
    try {
      payload = await response.json();
    } catch (error) {
      throw new ApiError(
        response.status,
        "Invalid JSON response",
        String(error)
      );
    }
  } else if (!response.ok) {
    try {
      payload = await response.text();
    } catch {
      payload = null;
    }
  }

  if (!response.ok) {
    const errorPayload = (payload ?? null) as ErrorPayload | null;
    const message = getErrorMessage(errorPayload, "Request failed");
    const details =
      typeof errorPayload === "object" && errorPayload !== null
        ? errorPayload.details
        : payload;
    throw new ApiError(response.status, message, details);
  }

  if (!isJson) {
    throw new ApiError(
      response.status,
      "Expected JSON response",
      "Response was not JSON"
    );
  }

  return payload as T;
}
