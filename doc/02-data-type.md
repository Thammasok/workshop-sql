# Data Type

A Data Type specifies a particular type of data, like integer, floating points, Boolean, etc. It also identifies the possible values for that type, the operations that can be performed on that type, and the way the values of that type are stored. In MySQL, each database table has many columns and contains specific data types for each column.

## Numeric

MySQL has all essential SQL numeric data types. These data types can include the exact numeric data types (For example, integer, decimal, numeric, etc.), as well as the approximate numeric data types (For example, float, real, and double precision). It also supports BIT datatype to store bit values. In MySQL, numeric data types are categories into two types, either signed or unsigned except for bit data type.

| Data Type Syntax    | Description |
| ------------------- | ----------------------------------------------- |
| TINYINT             | It is a very small integer that can be signed or unsigned. If signed, the allowable range is from -128 to 127. If unsigned, the allowable range is from 0 to 255. We can specify a width of up to 4 digits. It takes 1 byte for storage. |
| INT                 | It is a normal-sized integer that can be signed or unsigned. If signed, the allowable range is from -2147483648 to 2147483647. If unsigned, the allowable range is from 0 to 4294967295. We can specify a width of up to 11 digits. It requires 4 bytes for storage. |
| BIGINT              | It is a large integer that can be signed or unsigned. If signed, the allowable range is from -9223372036854775808 to 9223372036854775807. If unsigned, the allowable range is from 0 to 18446744073709551615. We can specify a width of up to 20 digits. It requires 8 bytes for storage. |
| DOUBLE(m,d)         | It is a double-precision floating-point number that cannot be unsigned. You can define the display length (m) and the number of decimals (d). This is not required and will default to 16,4, where 4 is the number of decimals. Decimal precision can go to 53 places for a double. Real is a synonym for double. It requires 8 bytes for storage. |
| DECIMAL(m,d)        | An unpacked floating-point number that cannot be unsigned. In unpacked decimals, each decimal corresponds to one byte. Defining the display length (m) and the number of decimals (d) is required. Numeric is a synonym for decimal. |
| BOOL                | It is used only for the true and false condition. It considered numeric value 1 as true and 0 as false. |
| BOOLEAN             | It is Similar to the BOOL. |

## Date and Time

This data type is used to represent temporal values such as date, time, datetime, timestamp, and year. Each temporal type contains values, including zero. When we insert the invalid value, MySQL cannot represent it, and then zero value is used.

The following table illustrates all date and time data types that support in MySQL:

| Data Type Syntax    | Maximum Size | Explanation |
| ------------------- | ------------ | ----------- |
| DATE                | Values range from '1000-01-01' to '9999-12-31'. | Displayed as 'yyyy-mm-dd'. It takes 3 bytes for storage. |
| TIME                | Values range from '-838:59:59' to '838:59:59'. | Displayed as 'HH:MM:SS'. It takes 3 bytes plus fractional seconds for storage. |
| DATETIME            | Values range from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. | Displayed as 'yyyy-mm-dd hh:mm:ss'. It takes 5 bytes plus fractional seconds for storage. |
| TIMESTAMP(m)        | Values range from '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' TC. | Displayed as 'YYYY-MM-DD HH:MM:SS'. It takes 4 bytes plus fractional seconds for storage. |

## String Data Types

The string data type is used to hold plain text and binary data, for example, files, images, etc. MySQL can perform searching and comparison of string value based on the pattern matching such as LIKE operator, Regular Expressions, etc.

The following table illustrates all string data types that support in MySQL:

| Data Type Syntax    | Maximum Size | Explanation |
| ------------------- | ------------ | ----------- |
| CHAR(size)          | It can have a maximum size of 255 characters. | Here size is the number of characters to store. Fixed-length strings. Space padded on the right to equal size characters. |
| VARCHAR(size) | It can have a maximum size of 255 characters. | Here size is the number of characters to store. Variable-length string. |
| TEXT(size) | Maximum size of 65,535 characters. | Here size is the number of characters to store. |
| MEDIUMTEXT(size) | It can have a maximum size of 16,777,215 characters. | Here size is the number of characters to store. |
| LONGTEXT(size) | It can have a maximum size of 4GB or 4,294,967,295 characters. | Here size is the number of characters to store. |
| ENUM |  It takes 1 or 2 bytes that depend on the number of enumeration values. An ENUM can have a maximum of 65,535 values. | It is short for enumeration, which means that each column may have one of the specified possible values. It uses numeric indexes (1, 2, 3…) to represent string values. |

Ref: <https://www.javatpoint.com/mysql-data-types>
