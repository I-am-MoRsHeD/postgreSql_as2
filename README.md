### 1. What is PostgreSQL?

* PostgreSQL হচ্ছে একটি ওপেন সোর্স RDBMS,যেটি ফ্রিতে ব্যবহার করা যায় এবং অনেকগুলো ফিচারস সমৃদ্ধ একটি RDBMS।অনেক এডভান্সড ফিচারসের জন্য এটি ব্যবহার করে কমপ্লেক্স কাজ করা যায়

### 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

* Primary Key হচ্ছে একটি টেবিলের মূল কী বলা যায়,যেটির মাধ্যমে টেবিল থেকে যেকোনো রো কে ইউনিকলি খুঁজে বের করা যায়।Primary Key কোনো টেবিলের একটি কলামও হতে পারে,আবার কয়েকটি কলাম এর সমন্বয়ে গঠিত হতে পারে
Foreign Key হচ্ছে একটি টেবিলের Primary Key যখন অন্য একটি টেবিলে ব্যবহৃত হয়।

### 3. Explain the purpose of the WHERE clause in a SELECT statement.

* Where Clause এর মাধ্যমে আমরা Select statement-এ ফিল্টারিং যুক্ত করতে পারি এবং এটির মাধ্যমে নির্দিষ্ট কোনো id,department or any field এর ডাটা আমরা বের করে ফেলতে পারি...

### 4. What are the LIMIT and OFFSET clauses used for?

* Limit আর Upset clauses গুলো আসলে ব্যবহৃত হয় Select statement এ।যখন একসাথে অনেকগুলো ডাটা না দেখিয়ে Limit set করে এবং প্রতিবার নতুন ডাটা দেখানোর জন্য পূর্বের ডাটা Upset এর মাধ্যমে না দেখানো।এইভাবেই ব্যবহৃত হয়।এটি মূলত Backend এ Pagination এর মতো ফিচার ইমপ্লিমেন্ট করার সময় ব্যবহৃত হয়।

### 5. How can you modify data using UPDATE statements?

* 
        Update table_name
				set field_name = "value";

এই স্ট্রাকচার ফলো করে Update statement এর মাধ্যমে ডাটা মডিফাই করা যায়।