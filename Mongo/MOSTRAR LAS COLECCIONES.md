MOSTRAR LAS COLECCIONES



switched to db admin

show collections

COL\_CLIENTES\_EP1\_EQUIPO\_08

COL\_LOG\_ACCESO\_EP1\_EQUIPO\_08

COL\_PEDIDOS\_EP1\_EQUIPO\_08

system.roles

system.users

system.version





CREACION DE CLIENTES



db.COL\_CLIENTES\_EP1\_EQUIPO\_08.insertMany(\[

&#x20; {

&#x20;   id\_cliente: 1,

&#x20;   nombre: 'Sebastian\_Soto',

&#x20;   email: 'sebas.soto@gmail.com'

&#x20; },

&#x20; {

&#x20;   id\_cliente: 2,

&#x20;   nombre: 'Franco\_Gonzalez',

&#x20;   email: 'franco.gonzalez@gmail.com'

&#x20; },

&#x20; {

&#x20;   id\_cliente: 3,

&#x20;   nombre: 'Sebastian\_Ortiz',

&#x20;   email: 'sebas.ortiz@gmail.com'

&#x20; }

])





CREACION DE PEDIDOS



db.COL\_PEDIDOS\_EP1\_EQUIPO\_08.insertMany(\[

&#x20; {

&#x20;   id\_pedido: 1,

&#x20;   id\_cliente: 1,

&#x20;   fecha: ISODate('2026-09-02'),

&#x20;   total: 50000

&#x20; },

&#x20; {

&#x20;     id\_pedido: 2,

&#x20;       id\_cliente: 2,

&#x20;       fecha: ISODate("2026-09-02"),

&#x20;       total: 75000

&#x20; },

&#x20; {

&#x20;     id\_pedido: 3,

&#x20;       id\_cliente: 3,

&#x20;       fecha: ISODate("2026-09-03"),

&#x20;       total: 120000

&#x20; }

])





CREACION DE ROLES



db.createRole({

&#x20;role: "MONGO\_READ\_EP1\_EQUIPO\_08",

&#x20;   privileges: \[

&#x20;       {

&#x20;           resource: {

&#x20;               db: "db\_ep1\_equipo\_08",

&#x20;               collection: "COL\_CLIENTES\_EP1\_EQUIPO\_08"

&#x20;           },

&#x20;           actions: \["find"]

&#x20;       },

&#x20;       {

&#x20;           resource: {

&#x20;               db: "db\_ep1\_equipo\_08",

&#x20;               collection: "COL\_PEDIDOS\_EP1\_EQUIPO\_08"

&#x20;           },

&#x20;           actions: \["find"]

&#x20;       }

&#x20;   ],

&#x20;   roles: \[]

});













**db.createRole({**

&#x20;   **role: "MONGO\_WRITE\_EP1\_EQUIPO\_08",**

&#x20;   **privileges: \[**

&#x20;       **{**

&#x20;           **resource: {**

&#x20;               **db: "db\_ep1\_equipo\_08",**

&#x20;               **collection: "COL\_CLIENTES\_EP1\_EQUIPO\_08"**

&#x20;           **},**

&#x20;           **actions: \["find"]**

&#x20;       **},**

&#x20;       **{**

&#x20;           **resource: {**

&#x20;               **db: "db\_ep1\_equipo\_08",**

&#x20;               **collection: "COL\_PEDIDOS\_EP1\_EQUIPO\_08"**

&#x20;           **},**

&#x20;           **actions: \["find", "insert", "update"]**

&#x20;       **}**

&#x20;   **],**

&#x20;   **roles: \[]**

**});**













**db.createRole({**

&#x20;   **role: "MONGO\_AUDIT\_EP1\_EQUIPO\_08",**

&#x20;   **privileges: \[**

&#x20;       **{**

&#x20;           **resource: {**

&#x20;               **db: "db\_ep1\_equipo\_08",**

&#x20;               **collection: "COL\_CLIENTES\_EP1\_EQUIPO\_08"**

&#x20;           **},**

&#x20;           **actions: \["find"]**

&#x20;       **},**

&#x20;       **{**

&#x20;           **resource: {**

&#x20;               **db: "db\_ep1\_equipo\_08",**

&#x20;               **collection: "COL\_PEDIDOS\_EP1\_EQUIPO\_08"**

&#x20;           **},**

&#x20;           **actions: \["find"]**

&#x20;       **},**

&#x20;       **{**

&#x20;           **resource: {**

&#x20;               **db: "db\_ep1\_equipo\_08",**

&#x20;               **collection: "COL\_LOG\_ACCESO\_EP1\_EQUIPO\_08"**

&#x20;           **},**

&#x20;           **actions: \["find"]**

&#x20;       **}**

&#x20;   **],**

&#x20;   **roles: \[]**

**});**





**CREACION DE USUARIOS**



**db.createUser({**

&#x20;   **user: "MONGO\_USER\_1\_EP1\_EQUIPO\_08",**

&#x20;   **pwd: "MUser01$EP1",**

&#x20;   **roles: \[**

&#x20;       **{**

&#x20;           **role: "MONGO\_READ\_EP1\_EQUIPO\_08",**

&#x20;           **db: "db\_ep1\_equipo\_08"**

&#x20;       **}**

&#x20;   **]**

**});**

**{ ok: 1 }**

**db.createUser({**

&#x20;   **user: "MONGO\_AUDITOR\_EP1\_EQUIPO\_08",**

&#x20;   **pwd: "MAudit01$EP1",**

&#x20;   **roles: \[**

&#x20;       **{**

&#x20;           **role: "MONGO\_AUDIT\_EP1\_EQUIPO\_08",**

&#x20;           **db: "db\_ep1\_equipo\_08"**

&#x20;       **}**

&#x20;   **]**

**});**



**db.createUser({**

&#x20;   **user: "MONGO\_ADMIN\_EP1\_EQUIPO\_08",**

&#x20;   **pwd: "MAdmin01$EP1",**

&#x20;   **roles: \[**

&#x20;       **{**

&#x20;           **role: "dbOwner",**

&#x20;           **db: "db\_ep1\_equipo\_08"**

&#x20;       **},**

&#x20;       **{**

&#x20;           **role: "userAdmin",**

&#x20;           **db: "db\_ep1\_equipo\_08"**

&#x20;       **}**

&#x20;   **]**

**});**

