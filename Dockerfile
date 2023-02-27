FROM eclipse-temurin:11

RUN apt-get update && apt-get install -y unzip

RUN curl -L --max-redirs 5 --retry 5 --no-progress-meter --output "SaxonHE11-4J.zip" "https://raw.githubusercontent.com/pl-strflt/Saxon-HE/3e039cdbccf4efb9643736f34c839a3bae3402ae/11/Java/SaxonHE11-4J.zip" && \
  unzip "SaxonHE11-4J.zip" -d "/opt/SaxonHE11-4J" && \
  rm "SaxonHE11-4J.zip"
RUN curl -L --max-redirs 5 --retry 5 --no-progress-meter --output "/opt/junit-frames-saxon.xsl" "https://raw.githubusercontent.com/pl-strflt/ant/c781f7d79b92cc55530245d9554682a47f46851e/src/etc/junit-frames-saxon.xsl"
RUN curl -L --max-redirs 5 --retry 5 --no-progress-meter --output "/opt/junit-noframes-saxon.xsl" "https://raw.githubusercontent.com/pl-strflt/ant/c781f7d79b92cc55530245d9554682a47f46851e/src/etc/junit-noframes-saxon.xsl"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
