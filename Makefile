debug:
#	docker compose exec backend rdebug-ide --host 0.0.0.0 --port 1234 -- bin/rails server -b 0.0.0.0 -p 3000

	docker compose exec backend sh -c "rm -f /rails/tmp/pids/server.pid && rdebug-ide --host 0.0.0.0 --port 1234 -- bin/rails server -b 0.0.0.0 -p 3000"
