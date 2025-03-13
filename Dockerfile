FROM mulesoft/flex-gateway:1.8.3

COPY rootfs/ /

USER root
RUN install -d -m 777 /usr/local/share/mulesoft/flex-gateway/conf.d/
USER 65532:0

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/init"]
