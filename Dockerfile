FROM openjdk:11

# Установка Scala
RUN apt-get update && apt-get install -y scala

# Установка sbt
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | tee /etc/apt/sources.list.d/sbt.list
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | tee /etc/apt/sources.list.d/sbt_old.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update && apt-get install -y sbt
RUN apt-get install -y iputils-ping && apt-get install mc -y

# Копирование и сборка приложения
WORKDIR /app
RUN sbt compile
