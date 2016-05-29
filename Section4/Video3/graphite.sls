graphite:
  pkg.installed:
    - pkgs:
      - graphite-web
      - graphite-carbon
  service.running:
    - enable: True
