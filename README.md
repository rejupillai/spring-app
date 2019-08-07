


## Running the application locally

One Spring bean profile should be activated to choose the database provider that the application should use. The profile is selected by setting the system property `spring.profiles.active` when starting the app.

The application can be started locally using the following command:

~~~
$ ./gradlew clean assemble
$ java -jar -Dspring.profiles.active=<profile> build/libs/spring-music.jar
~~~

where `<profile>` is one of the following values:

* `in-memory` (no external database required)
* `mysql`
* `postgres`
* `mongodb`
* `redis`

If no profile is provided, `in-memory` will be used. If any other profile is provided, the appropriate database server must be started separately. The application will use the host name `localhost` and the default port to connect to the database. The connection parameters can be configured by setting the appropriate [Spring Boot properties](http://docs.spring.io/spring-boot/docs/current/reference/html/common-application-properties.html). 

If more than one of these profiles is provided, the application will throw an exception and fail to start.

