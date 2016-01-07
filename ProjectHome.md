# fm-templates #
A set of templates to quick start an application. Here is the application list:
| **Project** | **Persistence** | **MVC** | **Other** | **Notes** |
|:------------|:----------------|:--------|:----------|:----------|
| web-spring-security-hibernate-hbm-0-0-1 | hibernate (hbm) |         | spring security |           |
| web-spring-security-mybatis-0-0-1 | mybatis         |         | spring security |           |
| web-spring-security-hibernate-hbm-0-0-2 | hibernate (hbm) | spring  | spring security | user administration interface |
| web-spring-security-hibernate-hbm-0-0-3 | hibernate (hbm) | spring  | spring security | custom handlers for login (success and failure) and logout |
| web-spring-hibernate-hbm-ajax-0-0-1 | hibernate (hbm) | spring  |           | ajax, Gson marshalling |
| web-jquery-plugins |                 |         |           |           |
| liquibase-demo |                 |         |           |           |
| spring-hibernate-annotations-generics-0-0-1 | hibernate (annotations) |         |           | generics daos |
| web-spring-security-hibernate-annotations-0-0-1 | hibernate (annotations) | spring  | spring security | generics daos and managers |
| multi-tenancy-demo-jdbc | spring-jdbc     |         |           | fixed number of data sources configured in XML |
| multi-tenancy-demo-hibernate | hibernate (annotations) |         |           | variable number of data sources configured in a global database |


## web-spring-security-hibernate-hbm-0-0-1 ##
a web application based on:
  * Spring security 3.0.7
  * Persistence with hibernate (_XML mapping_)
  * Sitemesh 2.4.2
  * Twitter bootstrap 1.4

## web-spring-security-mybatis-0-0-1 ##
a web application based on:
  * Spring security 3.0.7
  * Persistence with myBatis
  * Sitemesh 2.4.2
  * Twitter bootstrap 1.4

## web-spring-security-hibernate-hbm-0-0-2 ##
a web application based on:
  * Spring MVC 3.0.6
  * Spring security 3.0.7
  * Persistence with hibernate (_XML mapping_)
  * Sitemesh 2.4.2
  * Twitter bootstrap 1.4
  * displaytag 1.2
with a user administration interface (both for admins and standard users) made with Spring MVC 3.0.6.

## web-spring-security-hibernate-hbm-0-0-3 ##
a web application based on:
  * Spring MVC 3.0.6
  * Spring security 3.0.7
  * Persistence with hibernate (_XML mapping_)
  * Sitemesh 2.4.2
  * Twitter bootstrap 1.4
  * displaytag 1.2
with:
  * user administration interface (both for admins and standard users) made with Spring MVC 3.0.6
  * custom spring security login success and failure handler
  * custom spring security logout handler

## web-spring-hibernate-hbm-ajax-0-0-1 ##
an _ajax_ web application based on:
  * Spring MVC
  * Persistence with hibernate (_XML mapping_)
  * Sitemesh 2.4.2
  * Twitter bootstrap 2.0
  * Gson

## web-jquery-plugins ##
a collection of jQuery plugins based on:
  * jQuery
  * Twitter Bootstrap 2.0

## liquibase-demo ##
a demonstration of liquibase for database migrations and changelogs

## spring-hibernate-annotations-generics-0-0-1 ##
an _ajax_ web application based on:
  * Spring 3.1.1
  * Persistence with hibernate (_annotations mapping_)
  * Hibernate 4
  * Generics DAOs

## web-spring-security-hibernate-annotations-0-0-1 ##
a web application with user administration based on:
  * Spring 3.1.2-RELEASE
  * Persistence with hibernate (_annotations mapping_)
  * Hibernate 4
  * Generics DAOs and Managers
  * Twitter Bootstrap 2.2.1

## multi-tenancy-demo-jdbc ##
a demonstration of how to obtain multi tenancy with Spring using the JdbcTemplate provided by Spring
  * Spring 3.1.1-RELEASE
  * Persistence with spring-jdbc

## multi-tenancy-demo-hibernate ##
a demonstration of how to obtain multi tenancy with Spring using Hibernate. Data sources can be configured in a global configuration database, so that it is possible to add and remove a tenant without re-deploy the whole application
  * Spring 3.1.1-RELEASE
  * Persistence with hibernate