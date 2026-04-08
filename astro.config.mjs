import { defineConfig } from "astro/config";

export default defineConfig({
  // Base-path safe templates are used (import.meta.env.BASE_URL).
  // If you publish as a USER/ORG Pages repo (<username>.github.io), keep base as default.
  // If you publish as a PROJECT Pages repo, set e.g. `base: '/<repo>/'`.
});
