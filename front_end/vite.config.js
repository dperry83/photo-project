import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import eslintPlugin from 'vite-plugin-eslint';

export default defineConfig({
    plugins: [vue(), eslintPlugin()],
    server: {
        proxy: {
            '/api': {
                target: 'http://backend:3000',
                changeOrigin: true
            }
        }
    }
})
