import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
// import eslintPlugin from 'vite-plugin-eslint';

export default defineConfig({
    plugins: [vue()],
    server: {
        proxy: {
            '^/(api|session|user)': {
                target: 'http://backend:3000',
                changeOrigin: true
            }
        }
    },
    // resolve: {
    //     alias: {
    //         '@': fileURLToPath(new URL('./src', import.meta.url))
    //     }
    // }
})
