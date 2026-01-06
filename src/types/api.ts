export type ApiErrorDetails = Record<string, unknown> | string | null;

export class ApiError extends Error {
  status: number;
  details?: ApiErrorDetails;

  constructor(status: number, message: string, details?: ApiErrorDetails) {
    super(message);
    this.name = "ApiError";
    this.status = status;
    this.details = details;
  }
}

export type Result<T> =
  | { ok: true; data: T }
  | { ok: false; error: ApiError };
