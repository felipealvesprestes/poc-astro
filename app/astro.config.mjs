import { defineConfig } from 'astro/config';

export default defineConfig({
	server: {
		port: 3000,
		host: true
	},
	vite: {
		server: {
			host: "0.0.0.0",
			hmr: { clientPort: 3000 },
			port: 3000,
			watch: { usePolling: true }
		}
	}
});
