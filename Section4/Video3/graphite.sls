graphite:
  pkg.installed:
    - pkgs:
      - graphite-web
      - graphite-carbon

carbon-cache:
  service.running:
    - enable: True
