import { defineConfig } from "vite";

export default defineConfig({
  base: "./",
  server: {
    allowedHosts: ["xxxxxx.com"],
  },
  build: {
    minify: "terser",
  },
});
